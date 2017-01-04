NXRec.a;
NXRec.b("I")

NXRec.c;

~nx601.play;


(
~nx601 = { var melody,pattern,t_pattern,gran,time,d1;
	d1 = rrand(0.1,5.0);
	gran = rrand(4,8);
	melody = Array.fill(gran, {rrand(100.0,300.0)});
	time = Array.fill(gran, {rrand(0.001,1)});
	t_pattern = Demand.kr(Impulse.kr(0.0),0,Dseq(time,inf));
	pattern = Demand.kr(Impulse.kr(t_pattern),0,Dseq(melody,inf));
	Pan2.ar(LeakDC.ar(
		BPeakEQ.ar(BPeakEQ.ar(BPeakEQ.ar(BPeakEQ.ar(FreeVerb.ar(
			RHPF.ar(
			RHPF.ar(
			RLPF.ar(
				CombC.ar(
			Mix.new([
				SinOsc.ar(pattern,0,5) * EnvGen.kr(Env.new([0,1,0],[t_pattern,t_pattern]),Impulse.kr(t_pattern)),
				SinOsc.ar(pattern/2,0,10)* EnvGen.kr(Env.new([0,1,0],[t_pattern,t_pattern]),Impulse.kr(t_pattern)),
				SinOsc.ar(pattern*2,0,4)* EnvGen.kr(Env.new([0,1,0],[t_pattern,t_pattern]),Impulse.kr(t_pattern))
						]), d1,d1,d1 * rrand(5.0,20.0))
						,rrand(10.0,100.0),0.1,100),rrand(100.0,500.0),0.01,100)
				,rrand(5000.0,10000.0),0.1,100)
			,0.0,0.0,0.0)
		 ,100,6.0,6),1000,6.0,0),5000,6.0,0),10000,6.0,6)
		 ),0) * (0.001/0.999)* 1.0
};
)
