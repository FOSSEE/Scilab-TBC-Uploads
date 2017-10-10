// Exa 5.1
// To Calculate 
// A) The system capacity if the cluster size, N (reuse factor), is 4 and 
// B) The system capacity if the cluster size is 7.
// C) How many times would a cluster of size 4 have to be replicated to cover the entire cellular area? 
// D) Does decreasing the reuse factor N increase the system capacity?

clc;
clear all;

ToCH=960;// Total available channels
Cellarea=6; //in km^2
Covarea=2000;//in km^2
N1=4;  // Cluster Size
N2=7;  //Cluster Size

//solution
Area1=N1*Cellarea;//for N=4
Area2=N2*Cellarea;//For N=7
No_of_clusters1=round(Covarea/Area1);
No_of_clusters2=round(Covarea/Area2);
No_of_CH1=ToCH/N1;    // No of channels with cluster size 4
No_of_CH2=ToCH/N2;    // No of channels with cluster size 7
SysCap1=No_of_clusters1*ToCH;
SysCap2=No_of_clusters2*ToCH;
printf(' System Capacity with cluster size 4 is %d channels \n ',SysCap1);
printf(' Number of clusters for covering total area with N equals 4 are %d \n ',No_of_clusters1);
printf(' System Capacity with cluster size 7 is %d channels \n',SysCap2);
disp("      It is evident when we decrease the value of N from 7 to 4, we increase the system capacity from 46080 to 79680 channels. Thus, decreasing the reuse factor (N) increases the system capacity.")
