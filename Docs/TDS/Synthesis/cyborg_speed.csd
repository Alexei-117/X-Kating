<CsoundSynthesizer>
<CsOptions>
-o cyborg_speed.wav
</CsOptions>
<CsInstruments>


sr = 44100
ksmps = 1
nchnls = 1
0dbfs = 1

opcode transpose, a, ai
  ain, iratio xin
  fftin   pvsanal  ain, 1024, 256, 1024, 1 
  
  fftscal pvscale  fftin, iratio
  aTransp pvsynth  fftscal
          xout     aTransp
endop

instr 1

itD    = p4
iamp = 0dbfs
ifrec = 200
a1 oscils iamp, ifrec, 0					;; crea una onda basica 

kamp = 1
kcps = 6
itype = 3
kmod		lfo kamp, kcps, itype												

ktime = 0.01
kmod 	lineto kmod, ktime						


iTSemit= -12  
adel    delay     a1, itD        
atrans  transpose adel, (iTSemit/4)

aout = a1*kmod*atrans

out aout

endin

</CsInstruments>
<CsScore>

i1 0	0.5  0.1
i1 1	2  0

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
