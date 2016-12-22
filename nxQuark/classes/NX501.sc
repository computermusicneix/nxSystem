NX501 {
	*ar {
		arg vol=0.0,pan=0,q1=6,q2=0,q3=0,q4=6,v1=0.0,v2=0.0,v3=0.0;
		var arrays, launcher;
		"NX501:: Claror...".postln;
		"(
~nx501 = { arg
	a1=5,a2=0.1,a3=1000,
	b1=10,b2=0.1,b3=1000,
	c1=2.5,c2=0.1,c3=1000,
	d1=0.1,d2=0.1,d3=10000;
	Pan2.ar(LeakDC.ar(
		BPeakEQ.ar(BPeakEQ.ar(BPeakEQ.ar(BPeakEQ.ar(FreeVerb.ar(
			Mix.new([
Pan2.ar(LPF.ar(HPF.ar(LFPulse.ar(a1,1,a2),200000),a3),-1).distort,
Pan2.ar(LPF.ar(HPF.ar(LFPulse.ar(b1,1,b2),200000),b3),1).distort,
Pan2.ar(LPF.ar(HPF.ar(LFPulse.ar(c1,1,c2),200000),c3),0.5).distort,
Pan2.ar(LPF.ar(HPF.ar(LFPulse.ar(d1,1,d2),200000),d3),-0.5).distort])
			* (0.075/0.999)* 1.0
			,0.0,0.0,0.0)
		 ,100,6.0,6),1000,6.0,0),5000,6.0,0),10000,6.0,6)
		 ),0)
};
)".postln;
		arrays = [
			[0.1,0.1,rrand(100,10000),0.1,0.1,rrand(100,10000),0.1,0.1,rrand(100,10000),0.1,0.1,rrand(100,10000)],
			[0.5,0.1,rrand(100,10000),1.0,0.1,rrand(100,10000),2.5,0.001,rrand(100,10000),3.0,0.1,rrand(100,10000)],
			[5,0.1,rrand(100,10000),10,0.1,rrand(100,10000),2.5,0.1,rrand(100,10000),0.1,0.1,rrand(100,10000)],
			[0.1,0.9,rrand(100,10000),0.1,0.9,rrand(100,10000),0.1,0.9,rrand(100,10000),0.1,0.9,rrand(100,10000)],
			[0.25,0.3,rrand(100,10000),1.0,0.6,rrand(100,10000),0.5,0.15,rrand(100,10000),0.1,0.9,rrand(100,10000)],
			[5,0.3,rrand(100,10000),10,0.6,rrand(100,10000),2.5,0.1,rrand(100,10000),0.1,0.9,rrand(100,10000)]];
		launcher = rrand(0,5).postln;
		^Pan2.ar(LeakDC.ar(
		BPeakEQ.ar(BPeakEQ.ar(BPeakEQ.ar(BPeakEQ.ar(FreeVerb.ar(
			Mix.new([
					Pan2.ar(LPF.ar(HPF.ar(LFPulse.ar(arrays[launcher][0],1,arrays[launcher][1]),200000),arrays[launcher][2]),-1).distort,
Pan2.ar(LPF.ar(HPF.ar(LFPulse.ar(arrays[launcher][3],1,arrays[launcher][4]),200000),arrays[launcher][5]),1).distort,
Pan2.ar(LPF.ar(HPF.ar(LFPulse.ar(arrays[launcher][6],1,arrays[launcher][7]),200000),arrays[launcher][8]),0.5).distort,Pan2.ar(LPF.ar(HPF.ar(LFPulse.ar(arrays[launcher][9],1,arrays[launcher][10]),200000),arrays[launcher][11]),-0.5).distort])
			* (0.075/0.999)* vol
				 ,v1,v2,v3)
		 ,100,6.0,q1),1000,6.0,q2),5000,6.0,q3),10000,6.0,q4))
		,pan)
	}
	*print {
		"(
~nx501 = { arg
	a1=5,a2=0.1,a3=1000,
	b1=10,b2=0.1,b3=1000,
	c1=2.5,c2=0.1,c3=1000,
	d1=0.1,d2=0.1,d3=10000;
	Pan2.ar(LeakDC.ar(
		BPeakEQ.ar(BPeakEQ.ar(BPeakEQ.ar(BPeakEQ.ar(FreeVerb.ar(
			Mix.new([
Pan2.ar(LPF.ar(HPF.ar(LFPulse.ar(a1,1,a2),200000),a3),-1).distort,
Pan2.ar(LPF.ar(HPF.ar(LFPulse.ar(b1,1,b2),200000),b3),1).distort,
Pan2.ar(LPF.ar(HPF.ar(LFPulse.ar(c1,1,c2),200000),c3),0.5).distort,
Pan2.ar(LPF.ar(HPF.ar(LFPulse.ar(d1,1,d2),200000),d3),-0.5).distort])
			* (0.075/0.999)* 1.0
			,0.0,0.0,0.0)
		 ,100,6.0,6),1000,6.0,0),5000,6.0,0),10000,6.0,6)
		 ),0)
};
)".postln;
	}
}

