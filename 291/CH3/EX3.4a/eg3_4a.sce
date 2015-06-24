cigarette = 0.28;
cigar = 0.07;
cigar_and_cigarette = 0.05 ; 
cigar_or_cigarette = cigarette + cigar - cigar_and_cigarette;
disp( "% of the males smoke neither cigar nor cigarette", (1-cigar_or_cigarette)*100 )