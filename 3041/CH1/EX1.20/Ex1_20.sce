

//Calculations
//Part a
//    200*1.141      4
//v1(t)=-------------(1- - cos628t) 
//          3.14         3
//       200*1.141      800*1.141 
//v2(t)=----------- - ------------  cos(628t+<(V2/V1))
//         3.14          3*3.14
//
//V2/V1|w=0 =0.8;V2/V1|w=628 =6.43*10^-4 <V2/V1|w=628 =180
//v2(t)=72.02+0.0538 cos628t


//Part b
vrms=0.0538
vdc=sqrt(2)*72.02
r=vrms/vdc

//Results
printf ("ripple factor is %.2e",r)
