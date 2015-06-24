clear;
clc;
disp("--------------Example 12.4---------------")
frame_bits=200; 
datarate=200*10^3; // 200 kbps
Tfr=frame_bits/datarate;
printf("\nThe frame transmission time is %d ms.\n",Tfr*10^3);

function[S]=s_func (frame_rate) // function to determine S
    G=frame_rate*10^-3; // load
    S=G*(%e^(-G)); //formula
    percent=S*100;
    printf("S = %4.3f or %3.1f percent.",S,percent);
endfunction

//a. 1000 frames per second
frame_rate=1000;
printf("\na)");
S=s_func(frame_rate); //calling the function
throughput=rat(S,10^-2.5)*frame_rate;// approximation
// display result
printf("\nThe throughput is %d frames.Only %d frames out of %d will probably survive.\n",throughput,throughput,frame_rate);
printf("Note that this is the maximum throughput case, percentage wise.\n");

//b. 500 frames per second
frame_rate=500;
printf("\nb)");
S=s_func(frame_rate); //calling the function
throughput=S*frame_rate;
printf("\nThe throughput is %d frames.Only %d frames out of %d will probably survive.\n",throughput,throughput,frame_rate); // display result

//c. 250 frames per second
frame_rate=250;
printf("\nc)");
S=s_func(frame_rate); //calling the function
throughput=S*frame_rate;
printf("\nThe throughput is %d frames.Only %d frames out of %d will probably survive.\n",round(throughput),round(throughput),frame_rate);// display result
