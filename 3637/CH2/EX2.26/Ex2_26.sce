//problem 26 pagenumber 2.109
//given
freq1=1.5e3;//hz
bw=450;//hz
//determine qualityfactor f1 f2
q=freq1/bw;format(7);
f1=freq1*sqrt(1+(1/(4*q*q)))-freq1/(2*q);
f2=freq1*sqrt(1+(1/(4*q*q)))+bw/2;format(4);
disp('Quality factor  = '+string(q));format(7);//no unit
disp('Lower frequency = '+string(f1)+' Hz');
disp('Upper frequency = '+string(f2)+' Hz');
