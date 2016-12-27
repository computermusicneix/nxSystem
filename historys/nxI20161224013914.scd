///////////////////////////////////////////////////
// History, as it was on Sat Dec 24 01:47:07 2016.
///////////////////////////////////////////////////

// - 0:0:0 -  
NXRec.b("A20161224013914-");

// - 0:0:5.7 -  
~a.play;

// - 0:0:7.04 -  
~a.fadeTime = 100;

// - 0:0:8.48 -  
~a = { NX001.ar(0.5,v1:rrand(0.1,0.8),v2:rrand(0.1,0.8),v3:rrand(0.1,0.8))};

// - 0:0:15.57 -  
NX501.print;

// - 0:2:22.72 -  
~nx501.play;

// - 0:4:20.45 -  
(
~nx501 = { var
	a1=rrand(0.01,1.0),a2=rrand(0.1,0.5),a3=1000,
	b1=rrand(0.01,1.0),b2=rrand(0.1,0.5),b3=1000,
	c1=rrand(0.01,1.0),c2=rrand(0.1,0.5),c3=1000,
	d1=rrand(0.01,1.0),d2=rrand(0.1,0.5),d3=10000;
	Pan2.ar(LeakDC.ar(
		BPeakEQ.ar(BPeakEQ.ar(BPeakEQ.ar(BPeakEQ.ar(FreeVerb.ar(
			Mix.new([
				Pan2.ar(LPF.ar(RHPF.ar(LFPulse.ar(a1,1,a2),
					rrand(8000.0,16000.0),rrand(0.01,0.1),rrand(50,200)),a3),-1).distort,
				Pan2.ar(LPF.ar(RHPF.ar(LFPulse.ar(b1,1,b2),rrand(8000.0,16000.0),rrand(0.01,0.1),rrand(50,200),b3)),1).distort,
					Pan2.ar(LPF.ar(RHPF.ar(LFPulse.ar(c1,1,c2),rrand(8000.0,16000.0),rrand(0.01,0.1),rrand(50,200),c3)),0.5).distort,
					Pan2.ar(LPF.ar(RHPF.ar(LFPulse.ar(d1,1,d2),rrand(8000.0,16000.0),rrand(0.01,0.1),rrand(50,200)),d3),-0.5).distort])
			* (0.075/0.999)* 0.1
			,0.0,0.0,0.0)
		 ,100,6.0,6),1000,6.0,0),5000,6.0,0),10000,6.0,6)
		 ),0)
};
);

// - 0:4:44.51 -  
~a = { NX001.ar(0.5,v1:rrand(0.1,0.8),v2:rrand(0.1,0.8),v3:rrand(0.1,0.8))};

// - 0:6:13.31 -  
(
~nx501 = { var
	a1=rrand(0.01,1.0),a2=rrand(0.1,0.5),a3=1000,
	b1=rrand(0.01,1.0),b2=rrand(0.1,0.5),b3=1000,
	c1=rrand(0.01,1.0),c2=rrand(0.1,0.5),c3=1000,
	d1=rrand(0.01,1.0),d2=rrand(0.1,0.5),d3=10000;
	Pan2.ar(LeakDC.ar(
		BPeakEQ.ar(BPeakEQ.ar(BPeakEQ.ar(BPeakEQ.ar(FreeVerb.ar(
			Mix.new([
				Pan2.ar(LPF.ar(RHPF.ar(LFPulse.ar(a1,1,a2),
					rrand(8000.0,16000.0),rrand(0.01,0.1),rrand(50,200)),a3),-1).distort,
				Pan2.ar(LPF.ar(RHPF.ar(LFPulse.ar(b1,1,b2),rrand(8000.0,16000.0),rrand(0.01,0.1),rrand(50,200),b3)),1).distort,
					Pan2.ar(LPF.ar(RHPF.ar(LFPulse.ar(c1,1,c2),rrand(8000.0,16000.0),rrand(0.01,0.1),rrand(50,200),c3)),0.5).distort,
					Pan2.ar(LPF.ar(RHPF.ar(LFPulse.ar(d1,1,d2),rrand(8000.0,16000.0),rrand(0.01,0.1),rrand(50,200)),d3),-0.5).distort])
			* (0.075/0.999)* 0.1
			,0.0,0.0,0.0)
		 ,100,6.0,6),1000,6.0,0),5000,6.0,0),10000,6.0,6)
		 ),0)
};
);

// - 0:6:41.75 -  
~a.end(60);

// - 0:7:34.76 -  
~nx501.end(12);

// - 0:7:51.28 -  
NXRec.c;

