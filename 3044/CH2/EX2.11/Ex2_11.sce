//Variable declaration
l = [221, 234, 245, 253, 265, 266, 271, 272, 274, 276,276, 276, 278, 284, 289, 290, 290, 292, 292, 296,297, 298, 300, 303, 304, 305, 305, 308, 308, 309,310, 311, 312, 314, 315, 315, 323, 330, 333, 336,337, 338, 343, 346, 355, 364, 366, 373, 390, 391]

//Calculation
np = length(l)*0.25              // np-losition in list l(),for first quartile p=1/4
Q1 = l(13)                    // as np=12.5,so we round up to 13th
np = length(l)*0.5               //for second quartile p=1/2
np = int(np)
Q2 = (l(np) + l(np+1))*0.5    // Average of 25th and 26th
np = length(l)*0.75              //for third quartile p=3/4
Q3 = l(38)                      // round up to 38th
np = length(l)*0.93              //for 93rd percentile p=0.93
Q93 = l(47)                     // round up to 47th

//Results
printf ( "First quartile Q1 : %d nm ",Q1)
printf ( "Second quartile Q2 : %.1f nm ",Q2)
printf ( "Third quartile Q3 : %d nm ",Q3)
printf ( "93rd quartile Q93 : %d nm ",Q93)
