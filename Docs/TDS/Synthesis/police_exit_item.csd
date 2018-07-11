<CsoundSynthesizer>
<CsOptions>
-o lfo.wav ; salida de audio a un fichero WAV
</CsOptions>
<CsInstruments>

sr = 44100
ksmps = 16
0dbfs = 32767

instr 1
  iAmp     = p4   ; cuarto parametro de la activacion
  iFrec    = p5   ; quinto parametro de la activacion
	
kForm invalue "FormaMod"; Aqui lectura la entrada de los 3 widgets 
 iForm = i(kForm)
 
 kAmp invalue "AmpLFO"
 				outvalue "AmpLFO", kAmp
 			
 kFrec invalue "FrecLFO"
 				outvalue "FrecLFO", kFrec
 					
 
kres2 adsr 0.01, 0, 1, 0.1; Aqui la generacion de la envolvente, de la moduladora, 
kres lfo kAmp, kFrec
am			poscil kres2, iFrec+kres

aSal = iAmp*am
; y de la onda modulada

        out   aSal
endin

</CsInstruments>
<CsScore>

t 0 60   ; tempo = 60 BPM --> 1 beat = 1 s

;ins ini dur amp  frec  
; p1 p2  p3  p4    p5
;------------------------
i 1  0   60  15000  1000  ; de la onda base

; 0 seno, 1 triangular, 2 cuadrada bi., 3 cuadrada uni., 4 rampa, 5 sierra



</CsScore>
</CsoundSynthesizer>
<bsbPanel>
 <label>Widgets</label>
 <objectName/>
 <x>100</x>
 <y>122</y>
 <width>320</width>
 <height>240</height>
 <visible>true</visible>
 <uuid/>
 <bgcolor mode="nobackground">
  <r>230</r>
  <g>230</g>
  <b>230</b>
 </bgcolor>
 <bsbObject type="BSBLabel" version="2">
  <objectName/>
  <x>95</x>
  <y>11</y>
  <width>191</width>
  <height>24</height>
  <uuid>{2c80c649-2d98-4cd3-9bd2-1cfad8b11a06}</uuid>
  <visible>true</visible>
  <midichan>0</midichan>
  <midicc>0</midicc>
  <label>FORMA DE MODULADORA</label>
  <alignment>center</alignment>
  <font>Arial</font>
  <fontsize>14</fontsize>
  <precision>3</precision>
  <color>
   <r>0</r>
   <g>0</g>
   <b>0</b>
  </color>
  <bgcolor mode="nobackground">
   <r>255</r>
   <g>255</g>
   <b>255</b>
  </bgcolor>
  <bordermode>noborder</bordermode>
  <borderradius>1</borderradius>
  <borderwidth>1</borderwidth>
 </bsbObject>
 <bsbObject type="BSBLabel" version="2">
  <objectName/>
  <x>107</x>
  <y>73</y>
  <width>67</width>
  <height>36</height>
  <uuid>{2c73a969-7051-4631-a274-4f2fe023570f}</uuid>
  <visible>true</visible>
  <midichan>0</midichan>
  <midicc>0</midicc>
  <label>AMPLITUD
 DEL LFO</label>
  <alignment>center</alignment>
  <font>Arial</font>
  <fontsize>10</fontsize>
  <precision>3</precision>
  <color>
   <r>0</r>
   <g>0</g>
   <b>0</b>
  </color>
  <bgcolor mode="nobackground">
   <r>255</r>
   <g>255</g>
   <b>255</b>
  </bgcolor>
  <bordermode>noborder</bordermode>
  <borderradius>1</borderradius>
  <borderwidth>1</borderwidth>
 </bsbObject>
 <bsbObject type="BSBLabel" version="2">
  <objectName/>
  <x>185</x>
  <y>73</y>
  <width>86</width>
  <height>35</height>
  <uuid>{9888bba0-5c40-4df0-9dab-dbe870aca1a3}</uuid>
  <visible>true</visible>
  <midichan>0</midichan>
  <midicc>0</midicc>
  <label>FRECUENCIA
DEL LFO</label>
  <alignment>center</alignment>
  <font>Arial</font>
  <fontsize>10</fontsize>
  <precision>3</precision>
  <color>
   <r>0</r>
   <g>0</g>
   <b>0</b>
  </color>
  <bgcolor mode="nobackground">
   <r>255</r>
   <g>255</g>
   <b>255</b>
  </bgcolor>
  <bordermode>noborder</bordermode>
  <borderradius>1</borderradius>
  <borderwidth>1</borderwidth>
 </bsbObject>
 <bsbObject type="BSBDisplay" version="2">
  <objectName>AmpLFO</objectName>
  <x>58</x>
  <y>151</y>
  <width>55</width>
  <height>25</height>
  <uuid>{c0d915d5-a4ca-4979-a9e0-edb78c52e379}</uuid>
  <visible>true</visible>
  <midichan>0</midichan>
  <midicc>0</midicc>
  <label>300.000</label>
  <alignment>left</alignment>
  <font>Arial</font>
  <fontsize>12</fontsize>
  <precision>3</precision>
  <color>
   <r>0</r>
   <g>0</g>
   <b>0</b>
  </color>
  <bgcolor mode="nobackground">
   <r>255</r>
   <g>255</g>
   <b>255</b>
  </bgcolor>
  <bordermode>border</bordermode>
  <borderradius>1</borderradius>
  <borderwidth>1</borderwidth>
 </bsbObject>
 <bsbObject type="BSBDisplay" version="2">
  <objectName>FrecLFO</objectName>
  <x>248</x>
  <y>152</y>
  <width>55</width>
  <height>25</height>
  <uuid>{e801964d-762e-4aa0-a7eb-010b981726a6}</uuid>
  <visible>true</visible>
  <midichan>0</midichan>
  <midicc>0</midicc>
  <label>3.500</label>
  <alignment>left</alignment>
  <font>Arial</font>
  <fontsize>12</fontsize>
  <precision>3</precision>
  <color>
   <r>0</r>
   <g>0</g>
   <b>0</b>
  </color>
  <bgcolor mode="nobackground">
   <r>255</r>
   <g>255</g>
   <b>255</b>
  </bgcolor>
  <bordermode>border</bordermode>
  <borderradius>1</borderradius>
  <borderwidth>1</borderwidth>
 </bsbObject>
 <bsbObject type="BSBLabel" version="2">
  <objectName/>
  <x>142</x>
  <y>208</y>
  <width>82</width>
  <height>26</height>
  <uuid>{8395c93e-23f8-4549-9a4c-0a1e78e91aae}</uuid>
  <visible>true</visible>
  <midichan>0</midichan>
  <midicc>0</midicc>
  <label>--- 0        0 ---</label>
  <alignment>right</alignment>
  <font>Arial</font>
  <fontsize>12</fontsize>
  <precision>3</precision>
  <color>
   <r>0</r>
   <g>0</g>
   <b>0</b>
  </color>
  <bgcolor mode="nobackground">
   <r>255</r>
   <g>255</g>
   <b>255</b>
  </bgcolor>
  <bordermode>noborder</bordermode>
  <borderradius>1</borderradius>
  <borderwidth>1</borderwidth>
 </bsbObject>
 <bsbObject type="BSBLabel" version="2">
  <objectName/>
  <x>139</x>
  <y>112</y>
  <width>91</width>
  <height>25</height>
  <uuid>{cecb36a0-e410-448a-8d55-b801236b4eca}</uuid>
  <visible>true</visible>
  <midichan>0</midichan>
  <midicc>0</midicc>
  <label>-- 1000    10 ---</label>
  <alignment>right</alignment>
  <font>Arial</font>
  <fontsize>12</fontsize>
  <precision>3</precision>
  <color>
   <r>0</r>
   <g>0</g>
   <b>0</b>
  </color>
  <bgcolor mode="nobackground">
   <r>255</r>
   <g>255</g>
   <b>255</b>
  </bgcolor>
  <bordermode>noborder</bordermode>
  <borderradius>1</borderradius>
  <borderwidth>1</borderwidth>
 </bsbObject>
 <bsbObject type="BSBDropdown" version="2">
  <objectName>FormaMod</objectName>
  <x>135</x>
  <y>40</y>
  <width>120</width>
  <height>30</height>
  <uuid>{e007ab32-621c-40e5-a00e-d0962bb3fc1d}</uuid>
  <visible>true</visible>
  <midichan>0</midichan>
  <midicc>-3</midicc>
  <bsbDropdownItemList>
   <bsbDropdownItem>
    <name>seno</name>
    <value>0</value>
    <stringvalue/>
   </bsbDropdownItem>
   <bsbDropdownItem>
    <name>triangular</name>
    <value>1</value>
    <stringvalue/>
   </bsbDropdownItem>
   <bsbDropdownItem>
    <name>cuadrada bi</name>
    <value>2</value>
    <stringvalue/>
   </bsbDropdownItem>
   <bsbDropdownItem>
    <name>cuadrada uni</name>
    <value>3</value>
    <stringvalue/>
   </bsbDropdownItem>
   <bsbDropdownItem>
    <name>rampa</name>
    <value>4</value>
    <stringvalue/>
   </bsbDropdownItem>
   <bsbDropdownItem>
    <name>sierra</name>
    <value>5</value>
    <stringvalue/>
   </bsbDropdownItem>
  </bsbDropdownItemList>
  <selectedIndex>1</selectedIndex>
  <randomizable group="0">false</randomizable>
 </bsbObject>
 <bsbObject type="BSBVSlider" version="2">
  <objectName>AmpLFO</objectName>
  <x>125</x>
  <y>120</y>
  <width>20</width>
  <height>100</height>
  <uuid>{9702fe00-acb3-4f2e-877c-60b379319a28}</uuid>
  <visible>true</visible>
  <midichan>0</midichan>
  <midicc>0</midicc>
  <minimum>0.00000000</minimum>
  <maximum>1000.00000000</maximum>
  <value>300.00000000</value>
  <mode>lin</mode>
  <mouseControl act="jump">continuous</mouseControl>
  <resolution>-1.00000000</resolution>
  <randomizable group="0">false</randomizable>
 </bsbObject>
 <bsbObject type="BSBController" version="2">
  <objectName>hor9</objectName>
  <x>232</x>
  <y>125</y>
  <width>10</width>
  <height>100</height>
  <uuid>{7ef6d89a-ed7d-4bb6-8c2d-707bf3ba8a7d}</uuid>
  <visible>true</visible>
  <midichan>0</midichan>
  <midicc>0</midicc>
  <objectName2>FrecLFO</objectName2>
  <xMin>0.00000000</xMin>
  <xMax>0.00000000</xMax>
  <yMin>0.00000000</yMin>
  <yMax>10.00000000</yMax>
  <xValue>0.00000000</xValue>
  <yValue>3.50000000</yValue>
  <type>fill</type>
  <pointsize>1</pointsize>
  <fadeSpeed>0.00000000</fadeSpeed>
  <mouseControl act="press">jump</mouseControl>
  <color>
   <r>0</r>
   <g>234</g>
   <b>0</b>
  </color>
  <randomizable mode="both" group="0">false</randomizable>
  <bgcolor>
   <r>0</r>
   <g>0</g>
   <b>0</b>
  </bgcolor>
 </bsbObject>
</bsbPanel>
<bsbPresets>
</bsbPresets>
