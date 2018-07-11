<CsoundSynthesizer>
<CsOptions>
-o ruleta.wav
</CsOptions>
<CsInstruments>


sr = 44100
ksmps = 1
nchnls = 1
0dbfs = 1

instr 1

a1 oscils 0dbfs, p4, 0
;a1 vco2 0dbfs/2, p4;, 2, 0.5			;;es una onda no basica

ia = 1
idur = p3*2/3
ib = 0.00001
kend expon ia, idur, ib					;;caida exponencial

ktime = 0.008
kmod 	lineto kend, ktime				

asig = a1*kmod
gamix = asig

krvt =  0.01
ilpt =  0.01
asig	comb gamix, krvt, ilpt         
clear gamix
out asig

endin

</CsInstruments>
<CsScore>
;t 0 600 10 300
t 0 600 3	500 7	450 10 400							;;Con el segundo par de numeros lo que hacemos es que el tempo varie del primer par al segundo, yo puedo añadir los pares que quiera
i1 0.0		1 1000
i1 1.2		1 1000
i1 2.4		1 1000
i1 3.6		1 1000
i1 4.8		1 1000

i1 6.0		1 1000
i1 7.2		1 1000
i1 8.4		1 1000
i1 9.6		1 1000
i1 10.8	1 1000

i1 12.0	1 1000
i1 13.2	1 1000
i1 14.4	1 1000
i1 15.6	1 1000
i1 16.8	1 1000

</CsScore>
</CsoundSynthesizer>
<bsbPanel>
 <label>Widgets</label>
 <objectName/>
 <x>100</x>
 <y>100</y>
 <width>320</width>
 <height>240</height>
 <visible>true</visible>
 <uuid/>
 <bgcolor mode="nobackground">
  <r>255</r>
  <g>255</g>
  <b>255</b>
 </bgcolor>
</bsbPanel>
<bsbPresets>
</bsbPresets>
