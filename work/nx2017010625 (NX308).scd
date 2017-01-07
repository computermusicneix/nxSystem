
// NX308
// Bells in a tree

~nx501.play;

(
~nx501 = { arg

	Pan2.ar(LeakDC.ar(
	BPeakEQ.ar(BPeakEQ.ar


			,0.0,0.0,0.0)
		 ,100,6.0,6),1000,6.0,0),5000,6.0,0),10000,6.0,6)
		 ),0) * (1.0/0.999)* 1.0
};
)

////////////////

~nx308.play;

(
~nx308 = {
	Pan2.ar(LeakDC.ar(
	BPeakEQ.ar(BPeakEQ.ar(
		BPeakEQ.ar(BPeakEQ.ar(
				DynKlank.ar(`[[8000, 4071, 1153, 1723], nil, [1, 1, 1, 1]], Impulse.ar(1)) *
				EnvGen.kr(Env.new([0,1,0],[0.01,1]),Impulse.kr(1))
		 ,100,6.0,6),1000,6.0,0),5000,6.0,0),10000,6.0,6)
		,0),0) * (1.0/0.999)* 1.0
};
)

////////////////

~nx308.play;

(
~nx308 = {
	var time = rrand(1.0,10.0),
	time_change = Demand.kr(Impulse.kr(time), 0,Drand(
		[rrand(0.05,0.5),rrand(0.05,0.5),rrand(0.05,0.5),rrand(0.05,0.5)],inf)),
	ff = rrand(12000.0,15000.0).postln,
	ff2 = rrand(10000.0,12000.0).postln;
	Pan2.ar(LeakDC.ar(
		FreeVerb.ar(
	BPeakEQ.ar(BPeakEQ.ar(
		BPeakEQ.ar(BPeakEQ.ar(
					BPF.ar(BPF.ar(BPF.ar(BPF.ar(
					RHPF.ar(RHPF.ar(RHPF.ar(RHPF.ar(
				DynKlank.ar(`[[
					Demand.kr(Impulse.kr(time), 0,Dseq(
		[rrand(100.0,666.6),rrand(100.0,666.6),rrand(100.0,666.6),rrand(100.0,666.6)],inf))
					,
					Demand.kr(Impulse.kr(time), 0,Dseq(
		[rrand(100.0,666.6),rrand(100.0,666.6),rrand(100.0,666.6),rrand(100.0,666.6)],inf))
					,
					Demand.kr(Impulse.kr(time), 0,Dseq(
		[rrand(100.0,666.6),rrand(100.0,666.6),rrand(100.0,666.6),rrand(100.0,666.6)],inf))
					,
				Demand.kr(Impulse.kr(time), 0,Dseq(
		[rrand(100.0,666.6),rrand(100.0,666.6),rrand(100.0,666.6),rrand(100.0,666.6)],inf))], nil, [
								Demand.kr(Impulse.kr(time), 0,Dseq(
								[rrand(0.1,1.0),rrand(0.1,1.0),rrand(0.1,1.0),rrand(0.1,1.0)],inf))
							,
								Demand.kr(Impulse.kr(time), 0,Dseq(
								[rrand(0.1,1.0),rrand(0.1,1.0),rrand(0.1,1.0),rrand(0.1,1.0)],inf))
							,
								Demand.kr(Impulse.kr(time), 0,Dseq(
								[rrand(0.1,1.0),rrand(0.1,1.0),rrand(0.1,1.0),rrand(0.1,1.0)],inf))
							, 								Demand.kr(Impulse.kr(time), 0,Dseq(
									[rrand(0.1,1.0),rrand(0.1,1.0),rrand(0.1,1.0),rrand(0.1,1.0)],inf))	]], Impulse.ar(time_change)),ff*10,0.1,10),ff*10,1,10),ff*10,0.1,10),ff*10,0.1,10)
						,ff2,10,10),ff2,10,10),ff2,10,10),ff2,10,10)
						*
				EnvGen.kr(Env.new([0,1,0],[
					Demand.kr(Impulse.kr(time), 0,Dseq(
		[rrand(0.0001,10.0),rrand(0.001,10.0),rrand(0.001,10.0),rrand(0.001,10.0)],inf))
					,
				Demand.kr(Impulse.kr(time), 0,Dseq(
		[rrand(0.01,1.0),rrand(0.01,1.0),rrand(0.01,1.0),rrand(0.01,1.0)],inf))]),Impulse.kr(time_change))
					,100,6.0,6),1000,6.0,0),5000,6.0,0),10000,6.0,6), 0.0,0.0,0.0)
		,0),0) * (1/0.999)* 1.0
};
)

~nx308.end(10);
~nx308 = nil;

NXRec.a;
NXRec.b("try");

NXRec.c;
