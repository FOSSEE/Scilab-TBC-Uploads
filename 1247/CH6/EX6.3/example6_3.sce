clear;
clc;

// Stoichiometry
// Chapter 6
// Stoichiometry and Unit Operations


// Example 6.3
// Page 353
printf("Example 6.3, Page 353 \n \n");

// solution
// material balance

// V2 vapour mix is a ternary azeotrope in which all cyclohexane of D1 is recycled
// V2 stream
// Cyclohexane balance
// D1 = (.488/.024)*V2
// IPA in V2 = .206V2
// water in V2 = (1-.488-.206)*V2
// W2 stream
// IPA in W2 = (.23D1-.206V2)
// water in W2 = (1-.024-.23)*D1-.306V2
// W2 stream = 4.471V2 + 14.862V2
// D3 is an azeotrope containing 67.5 mol% IPA
// water in W3 stream = (1-.675)F
// basis = 100 kmol/h fresh feed
// W1+W3 = 100                (i)
// .998W1 + .001W3 = 67.5    (ii)
// solving it 
W1 = 67.603 //kmol/h
W3 = 32.397 //kmol/h
IPA1 = W3*.001 // IPA in W3
//IPA2 = 4.471*V2 - .032   IPA in D3
//C-1 = F+D3 = F1
// water in D3 = 6.624V2 - .047-4.471V2+.032
// water in W3 = 14.862V2-2.153V2+.015
// solving them
V2 = 2.624 //kmol/h
D3 = 2.153*V2-.015
D1 = 20.333*V2
F1 = 6.624*V2+99.953
R = 1.75*D1 // = V1+V2-D1
V1 = 144.1
r = D3/100 // recycle ratio
printf("After performing overall material balance we get Reflux, R = "+string(R)+"kmol/h and \n recycle ratio = "+string(r)+" kmol/kmol fresh feed.")
