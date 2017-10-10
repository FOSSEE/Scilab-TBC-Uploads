//example 7. 3//
clc
//clears the screen//
clear
//clears all existing variables//
m (1) =16;
//taking the given values//
m (2) = log2 (m (1) ) 
//making necessary calculations
m (3) =m(2) -1;
m (4) =m(1) /2;
printf ('A %d-to-1 multiplexer requires ' ,m(1));
printf( '%d select lines , The lower ',m(2));
printf ( ' %d select lines choose ',m(3));
printf ( ' %d-to-1multiplexer outputs. The 2 to 1 multiplexers chooses one of the output of two ' ,m(4));
printf ( '%d-to-1 multiplexers depending on what appears in the ' ,m(4));
printf ( ' %dth select line.', m (2) );
//displaying the result//