clc;
//page 341
//problem 6.1

//Given messages signal m = [1,0,1,1,0,1]
m = [1,0,1,1,0,1];

//Logical 0 corrsponds to pi i.e %pi and Logical 1 corresponds to 0

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//For BPSK, from the above deduction let the carrier phase be Carrier_Phase_BPSK
for i = 1:5
    if m(i)==1 then
        Carrier_Phase_BPSK(i) = 0;
    else
        Carrier_Phase_BPSK(i) = %pi;
    end
end

disp(Carrier_Phase_BPSK,'The Phase of the carrier signal for BPSK varies as ');

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//For DPSK
//Let b represent the input to balance modulator

//If the initial value of b be 0
b = 0;

for i = 2:5
    b(i) = bitxor(m(i),b(i-1))    
end

//Now the carrier phase, Carrier_Phase_DPSK
for i = 1:5
    if b(i)==1 then
        Carrier_Phase_DPSK(i) = 0;
    else
        Carrier_Phase_DPSK(i) = %pi;
    end
end

//Now the carrier amplitude, Carrier_Amplitude_DPSK
for i = 1:5
    Carrier_Amplitude_DPSK(i) = cos(Carrier_Phase_DPSK(i));
end

disp(Carrier_Phase_DPSK,'The Phase of the carrier signal for DPSK varies as follows, '+'when the initial value of b is 1');
disp(Carrier_Amplitude_DPSK,'The Amplitude of the carrier signal for DPSK varies as follows, '+'when the initial value of b is 1');

//If the initial value of b be 1
b = 1;

for i = 2:5
    b(i) = bitxor(m(i),b(i-1))    
end

//Now the carrier phase, Carrier_Phase_DPSK
for i = 1:5
    if b(i)==1 then
        Carrier_Phase_DPSK(i) = 0;
    else
        Carrier_Phase_DPSK(i) = %pi;
    end
end

//Now the carrier amplitude, Carrier_Amplitude_DPSK
for i = 1:5
    Carrier_Amplitude_DPSK(i) = cos(Carrier_Phase_DPSK(i));
end

disp(Carrier_Phase_DPSK,'The Phase of the carrier signal for DPSK varies as follows, '+'when the initial value of b is 0');
disp(Carrier_Amplitude_DPSK,'The Amplitude of the carrier signal for DPSK varies as follows, '+'when the initial value of b is 0');

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//For DEPSK
//The DEPSK transmitter output is same as that of DPSK

//If the initial value of b be 0
b = 0;

for i = 2:5
    b(i) = bitxor(m(i),b(i-1))    
end

//Now the carrier phase, Carrier_Phase_DPSK
for i = 1:5
    if b(i)==1 then
        Carrier_Phase_DEPSK(i) = 0;
    else
        Carrier_Phase_DEPSK(i) = %pi;
    end
end

disp(Carrier_Phase_DEPSK,'The Phase of the carrier signal for DEPSK varies as follows, '+'when the initial value of b is 1');

//If the initial value of b be 1
b = 1;

for i = 2:5
    b(i) = bitxor(m(i),b(i-1))    
end

//Now the carrier phase, Carrier_Phase_DPSK
for i = 1:5
    if b(i)==1 then
        Carrier_Phase_DEPSK(i) = 0;
    else
        Carrier_Phase_DEPSK(i) = %pi;
    end
end

disp(Carrier_Phase_DEPSK,'The Phase of the carrier signal for DEPSK  varies as, '+'when the initial value of b is 0');





