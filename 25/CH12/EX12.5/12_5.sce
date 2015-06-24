//example:-12.5,page no.-702.
// program to find the J/S ratio.
Gr=10^3.5;Pj=1000;R=3000;Br=1*10^6;Bj=20*10^6;
Gj=10;lamda=0.03;Pt=10^5;sigma=4;Rj=10000;
x=(Pj/Pt)*((4*%pi*(R^2)*Gj)/(sigma*Gr))*(Br/Bj); // x=J/S
x=10*log10(x);
Grsl=10^(3.5-2);// radar anteena gain in its sidelobe region.
x1=(Pj/Pt)*(((R^4)*Gj*Grsl)/((Gr^2)*(Rj^2)))*(Br/Bj);
x1=10*log10(x1);
disp(x,'THE J/S ration for the SSJ case in dB is = ')
disp(x1,'THE J/S ratio for the SOJ case in dB is = ')