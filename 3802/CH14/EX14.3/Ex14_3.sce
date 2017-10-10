//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex14_3.sce.

clc;
clear;
average_demand=33.75;                    //in kilowatt
time_duration=24*365;                    // in hours
tariff=1.25;                            //in rupees per kilowatthour
annualenergy_consumption=average_demand*time_duration;
C=annualenergy_consumption*tariff;
printf(" \n Annual bill of the consumer=%6.1f rupees \n",C)
