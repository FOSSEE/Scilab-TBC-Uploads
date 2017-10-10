
//

//

aa=1.725
ab=2.245
ba=2.145
bb=3.045

AB=200
rla=450


aAB=ab-aa

printf("\n apparent difference of level between A and B is %0.3f meters',aAB)

dB=bb-ba

printf("\n apparent difference of level at B %0.3f meters',dB)

td=(aAB+dB)/2

printf("\n true differece of level= %0.3f ",td)

CB=bb

CA=CB-td

e=ba-CA

printf("\n correction to be applied at A is = %0.3f ",e)

rlb=rla-td

printf("\n RL of B= %0.3f meters',rlb)
