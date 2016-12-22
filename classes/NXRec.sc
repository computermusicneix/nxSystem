NXRec {

	classvar <>alpha,<>beta;

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
			0.6.wait;
			Server.default.prepareForRecord(alpha++".wav");
			0.6.wait;
			Server.default.recSampleFormat = "int16";
			0.6.wait;
			Server.default.record;
		}).start;}
	*c{
		^Task.new({
			Server.default.stopRecording;
			0.6.wait;
			History.end;
			0.6.wait;
			History.saveStory(alpha++".scd");
		}).start;
	}}
