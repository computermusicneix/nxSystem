///////////////////////////////////////////////////
// History, as it was on Sat Dec 24 04:36:48 2016.
///////////////////////////////////////////////////

// - 0:0:0 -  
NXRec.b("I20161224043149-");

// - 0:0:5.4 -  
~a.play;

// - 0:0:6.55 -  
~a.fadeTime = 100;

// - 0:0:7.56 -  
~a = { NX001.ar(0.5, v1:rrand(0.1,0.8),v1:rrand(0.1,0.8),v1:rrand(0.1,0.8))};

// - 0:0:14.13 -  
NX501.print;

// - 0:1:33.43 -  
~nx501.play;

// - 0:1:37.33 -  
(
~nx501 = { var
	a1=rrand(0.1,1.0),a2=rrand(0.1,0.5),a3=1000,
	b1=rrand(0.1,1.0),b2=rrand(0.1,0.5),b3=1000,
	c1=rrand(0.1,1.0),c2=rrand(0.1,0.5),c3=1000,
	d1=rrand(0.1,1.0),d2=rrand(0.1,0.5),d3=10000;
	Pan2.ar(LeakDC.ar(
		BPeakEQ.ar(BPeakEQ.ar(BPeakEQ.ar(BPeakEQ.ar(FreeVerb.ar(
			Mix.new([
Pan2.ar(LPF.ar(HPF.ar(LFPulse.ar(a1,1,a2),200000),a3),-1).distort,
Pan2.ar(LPF.ar(HPF.ar(LFPulse.ar(b1,1,b2),200000),b3),1).distort,
Pan2.ar(LPF.ar(HPF.ar(LFPulse.ar(c1,1,c2),200000),c3),0.5).distort,
Pan2.ar(LPF.ar(HPF.ar(LFPulse.ar(d1,1,d2),200000),d3),-0.5).distort])
			* (0.075/0.999)* 0.1
			,0.0,0.0,0.0)
		 ,100,6.0,6),1000,6.0,0),5000,6.0,0),10000,6.0,6)
		 ),0)
};
);

// - 0:3:30.3 -  
~a.end(60);

// - 0:4:37.59 -  
~nx501.end(12);

// - 0:4:56.18 -  
~a = nil; ~nx501 = nil;

// - 0:4:57.95 -  
NXRec.c;

