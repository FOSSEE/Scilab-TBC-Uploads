TDR=1200
T=60
TN=TDR*T//total no. of bits in 60 sec
NP=576//no. of bits in the preamble
NU=TN-NP//no. of usable bits

NS=32
NA=32
N16=16*NA
N1B=NS+N16

NBPM=NU/N1B//no. of batches/min.
NPAPB=16
NTPM=NBPM*NPAPB//no. of pages transmitted/min.
disp(NTPM,'no. of pages transmitted/min.')

