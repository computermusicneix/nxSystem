NXVRec {

	classvar <>alpha,<>beta,<>video;

	*new { arg beta;
		^super.new.init(beta);
		}

	*a{
		^Task.new({
			History.clear.end;
			0.6.wait;
			History.start;
		}).start;}
	*b{ arg beta;
		^Task.new( {
			alpha = Date.getDate.format("nx"++beta++"%Y%m%d%H%M%S").postln;
            		Server.default.recHeaderFormat = "WAV";
			1.wait;
			video = "ffmpeg -loglevel 0 -f x11grab -s 1440x900 -i :0.0 -vcodec libx264 -preset ultrafast -qp 0 -threads 0 " ++ alpha ++".avi";
			1.wait;
			Server.default.recSampleFormat = "int16";
			1.wait;
			Server.default.prepareForRecord(alpha++".wav");
			1.wait;
			Server.default.record; video.unixCmd;
		}).start;}
	*c{
		^Task.new({
			Server.default.stopRecording; "killall ffmpeg".unixCmd;
			0.6.wait;
			History.end;
			0.6.wait;
			History.saveStory(alpha++".scd");
		}).start;
	}
	*title { var title = alpha; ^title; }
}

