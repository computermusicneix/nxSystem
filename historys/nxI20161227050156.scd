///////////////////////////////////////////////////
// History, as it was on Tue Dec 27 05:07:29 2016.
///////////////////////////////////////////////////

// - 0:0:0 -  
NXRec.b("A20161227050156-");

// - 0:0:4.94 -  
~nx001.play;

// - 0:0:6.54 -  
~nx001.fadeTime = 100;

// - 0:0:8.66 -  
(
~nx001 = { var scale,t,fund,freq,vibdepth,ffreq,cutoff;
	scale = [0,3,4,5];
    t = [16,32].choose;
	fund = 2+[0,3,4,5,6,7].choose;
	freq = (scale.choose+fund+(4*(0..3).choose)).midicps;
    vibdepth = (90..500).choose.reciprocal;
    cutoff = freq * (1.1,1.2..4).choose;
    ffreq = max( EnvGen.kr(Env.linen(300.0.rand/t,300.0.rand/t,300.0.rand/t))*freq*12,cutoff)+100;
	Pan2.ar(LeakDC.ar(Normalizer.ar(
				BPeakEQ.ar(BPeakEQ.ar(BPeakEQ.ar(BPeakEQ.ar(FreeVerb.ar(
	RLPF.ar(
		MoogFF.ar(
			Pulse.ar( [
				(SinOsc.kr(t/(1..10).choose).range(vibdepth.neg,vibdepth)+1) * Line.kr(freq,freq*(0.99,0.991..1.01).choose,t)
				,freq*(1+LFNoise0.kr(t,0.02,1))
	])
		,ffreq,LFNoise2.kr(1/t,1.4,1.5)).tanh
		,1e4,0.9).tanh
		 ,0.8,0.8,0.8)
		 ,100,6.0,6),1000,6.0,0),5000,6.0,0),10000,6.0,6)
		 ,(0.5/0.999)*1.0,0.1)),0)
};
);

// - 0:0:19.19 -  
NX501.print;

// - 0:2:35.42 -  
~nx501.play;

// - 0:2:36.62 -  
~nx501.fadeTime = 100;

// - 0:2:38.51 -  
(
~nx501 = { var
	a1=rrand(0.01,1.0),a2=rrand(0.01,0.3),a3=1000,
	b1=rrand(0.01,1.0),b2=rrand(0.01,0.3),b3=1000,
	c1=rrand(0.01,1.0),c2=rrand(0.01,0.3),c3=1000,
	d1=rrand(0.01,1.0),d2=rrand(0.01,0.3),d3=10000;
	Pan2.ar(LeakDC.ar(
		BPeakEQ.ar(BPeakEQ.ar(BPeakEQ.ar(BPeakEQ.ar(FreeVerb.ar(
			Mix.new([
				Pan2.ar(LPF.ar(RHPF.ar(LFPulse.ar(a1,1,a2),rrand(10000,12000),0.01,100),a3),-1).distort,
Pan2.ar(LPF.ar(RHPF.ar(LFPulse.ar(b1,1,b2),rrand(10000,12000),0.01,100),b3),1).distort,
Pan2.ar(LPF.ar(RHPF.ar(LFPulse.ar(c1,1,c2),rrand(10000,12000),0.01,100),c3),0).distort,
Pan2.ar(LPF.ar(RHPF.ar(LFPulse.ar(d1,1,d2),rrand(10000,12000),0.01,100),d3),0).distort])
			* (0.075/0.999)* 0.3
			,0.0,0.0,0.0)
		 ,100,6.0,6),1000,6.0,0),5000,6.0,0),10000,6.0,6)
		 ),0)
};
);

// - 0:4:24.19 -  
~nx001.end(60);

// - 0:5:1.62 -  
~nx501.end(20);

// - 0:5:29.04 -  
~nx001 = nil; ~nx501 = nil;

// - 0:5:31.32 -  
NXRec.c;

