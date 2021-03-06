
(
SynthDef("nx701", {
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
			[0,vol,0],[attack,decay]),gate, doneAction:2);
	Out.ar( 0, aduio.distort)
}).store;
)

(
Tdef(\nx701a, {
	inf.do({
		100.do({
			s.sendMsg("/s_new","nx701", -1, 0, 0,
				\freq, rrand(10,10000),
				\freqL1, rrand(10,5000),
				\freqL2, rrand(10,5000),
				\freqH1, rrand(5000,18000),
				\freqH2, rrand(500,18000),
				\qL1, rrand(0.0001,1.0),
				\qL2, rrand(0.0001,1.0),
				\qH1, rrand(0.0001,1.0),
				\qH2, rrand(0.0001,1.0),
				\attack,rrand(0.00001,0.1),
				\decay, rrand(0.0001,0.01),
				\pan, [-1,0,1].choose,
				\gate, 1,
				\vol, rrand(0.1,0.5));
			rrand(0.00001,0.001).wait;
		})
	})
}).play
)

Tdef(\nx701a).stop;