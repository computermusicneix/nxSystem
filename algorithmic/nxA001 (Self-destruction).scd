
// Self-destruction algorithm
// Miquel Parera.
// January 2017

// Start with a reduction of wait to rrand(0.001,0.01)

(
SynthDef("nxSDA", {
	arg freq = 0, freqL1 = 0, freqL2 = 0, freqH1 = 0 , freqH2 = 0,
	qL1 = 0, qL2 = 0, qH1 = 0, qH2 = 0, attack = 0, decay = 0,pan = 0,vol = 0,
	gate = 0;
	var aduio;
	aduio = Pan2.ar(
			RHPF.ar(
				RLPF.ar(
					RHPF.ar(
						RLPF.ar(
			SinOsc.ar(freq)
							,freqL2,qL2,100)
						,freqH2,qH2,100)
					,freqL1,qL1,100)
				,freqH1,qH1,100)
			,pan)
		* EnvGen.kr(Env.new(
			[0,vol,0],[attack,decay]),doneAction:2);
	Out.ar( 0, aduio.distort)
}).store;
)

(
Tdef(\nxSDAa, {
	inf.do({
		100.do({ var
			freq = rrand(10.0,10000.0),
			freqL1 = rrand(10.0,5000.0),
			freqL2 = rrand(10.0,5000.0),
			freqH1 = rrand(5000.0,18000.0),
			freqH2 = rrand(5000.0,18000.0),
			qL1 = rrand(0.0001,1.0),
			qL2 = rrand(0.0001,1.0),
			qH1 = rrand(0.0001,1.0),
			qH2 = rrand(0.0001,1.0),
			attack = rrand(0.00001,1.0),
			decay = rrand(0.00001,1.0),
			pan = [-1,0,1].choose,
			vol = rrand(0.0001,0.5);
			s.sendMsg("/s_new","nxSDA", -1, 0, 0,
				\freq, freq,
				\freqL1, freqL1,
				\freqL2, freqL2,
				\freqH1, freqH1,
				\freqH2, freqH2,
				\qL1, qL1,
				\qL2, qL2,
				\qH1, qH1,
				\qH2, qH2,
				\attack,attack,
				\decay, decay,
				\pan, pan,
				\vol, vol);
			rrand(0.0001,0.01).wait;
		})
	})
}).play
)

Tdef(\nxSDAa).stop;