
// NX018
// Bass drone

~nx018.play;

~nx018.fadeTime = 100;

(
~nx018 = { var
	freq = rrand(50.0,200.0),
	hz = rrand(0.01,1.0);
		Pan2.ar(LeakDC.ar(
		FreeVerb.ar(
	BPeakEQ.ar(BPeakEQ.ar(
		BPeakEQ.ar(BPeakEQ.ar(
					RHPF.ar(
					SinOsc.ar(freq) + SinOsc.ar(freq/2) * SinOsc.ar(hz)
						,freq/2,0.001,100)
		,100,6.0,6),1000,6.0,0),5000,6.0,0),10000,6.0,6), 0.0,0.0,0.0)
		,0),0) * (10.0/0.999)* 1.0
};
)

~nx018.end(10);
~nx018 = nil;