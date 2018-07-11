<CsoundSynthesizer>
<CsOptions>
-o choque_obstaculo.wav
</CsOptions>
<CsInstruments>

sr = 44100
ksmps = 10
nchnls = 1

giSeno   ftgen  0, 0, 2^12, 10, 1  ; ciclo de onda seno

opcode transpose, a, ai
  ain, iratio xin
  fftin   pvsanal  ain, 1024, 256, 1024, 1 ; N = 1024 muestras, superp = 75%, Hanning
  fftscal pvscale  fftin, iratio
  aTransp pvsynth  fftscal
          xout     aTransp
endop


instr 1
  iAmp   = p4
  iFrec  = p5
  itD    = p6  ; tiempo de retardo (s)
  igR    = p7  ; ganancia de la realimentacion 
  iFmod  = 4
  iTSemit= -2  ; semitonos de transposicion cada repeticion

  aout    init      0

  kAmp    linseg    0, 0.1, iAmp, 0.5, 0
  aFrec   oscil     iFrec/2, iFmod, giSeno
  asig    poscil    kAmp, aFrec+iFrec, giSeno
  asig    buzz      kAmp, aFrec+iFrec, 3, giSeno
  adel    delay     aout, itD        ; Delay en segundos
  atrans  transpose adel, 2^(iTSemit/10)
  aout    =         asig+igR*atrans
  
          out       aout
endin

</CsInstruments>
<CsScore>
; ins ini dur Amp Frec  tD  gR
;------------------------------
i  1   0   1.5 20000 250 0.1 0.8
e
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
