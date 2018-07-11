<CsoundSynthesizer>
<CsOptions>
-o cambio_posicion.wav
</CsOptions>
<CsInstruments>


sr = 44100
ksmps = 1
nchnls = 1
0dbfs = 1

instr 1

a1 vco2 0dbfs/2, p4, 2, 0.5

idur = p3*2/3
kend expon 1, idur, 0.1					

kmod 	lineto kend, 0.1		 

asig = a1*kmod*0.2
    
out asig

endin

</CsInstruments>
<CsScore>

t 0 120

i1 0.0		0.8 800

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
