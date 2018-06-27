# HuAc
WiFi-based activity recognition dataset
//////////////////////////////
WiAR dataset : WiFi-based Activity Recognition dataset
////////////////////////////

The WiAR dataset contains sixteen activities including coarse-grained activity and gestures performed by ten volunteers with 30 times every volunteer. Now, we only list three volunteers' activity dataset such as volunteer A, volunteer B, volunteer C. Of course, you can extract RSSI and CSI from raw data in the WiAR. We also provide some codes to beginners. The goal is to share new ideas with other reseachers to develop the field.


***************************
Section 1:Device Configuration
***************************
1. T400 laptop, 5300 card.
2. Sample rate: 30Hz
3. Three antennae
具体参考：http://dhalperi.github.io/linux-80211n-csitool/installation.html
my blog:http://blog.csdn.net/guolinlin11



***********************************************************************

Section 2: Data format

***********************************************************************
We provide raw data received by the receiver. The details are shown in following.

01. each activity has 30 samples.

02. ten volunteers participate in collecting activity data.

03. csi_ai_j.dat represent the jth sample of the ith volunteer. 

**********************************************************************









**********************************************************************
Section 3: activities
**********************************************************************
There are sixteen activities as follows.
01. horizontal_arm wave
02. high arm wave
03. two hands wave
04. high throw
05. drwa_x
06. draw tick
07. toss paper
08. forward kick
09. side kick
10. bend
11. hand clap
12. walk
13. phone call
14. drink water
15. sit down
16. squat

these data is raw data. Therefore, user need to preprocess phase.
**********************************************************************




*********************************************************************
Section 4: codes(matlab)
*********************************************************************
01. read_bf_file.m 

The function lists several details including timestamp low, bfee_count, Nrx, Ntx, rssi_a, rssi_b, rssi_c, noise, perm, agc, rate, csi.

02. get_csi_from_file
The function obtains CSI.
website:http://dhalperi.github.io/linux-80211n-csitool/faq.html

**********************************************************************










*******************************************************************
If your paper relate to my works, please cite our papers as follows.
******************************************************************

@inproceedings{guolinlin_1,
title={A Survey on motion detection using WiFi signals},
author={Linlin Guo, Lei Wang, Jialin Liu, and Wei Zhou},
booktitle={Proc. of IEEE MSN},
year={2016}
}

@inproceedings{guolinlin_2,
title={A Novel benchmark on human activity recognition using WiFi signals},
author={Linlin Guo, Lei Wang, Jialin Liu, Wei Zhou, Bingxian Lu},
booktitle={Proc. of IEEE Healthcom},
year={2017}
}

@article{guolinlin_3,
author={Linlin Guo, Lei Wang, Jialin Liu, Wei Zhou, and Bingxian Lu},
journal={Wireless Communications and Mobile Computing},
title={HuAc: Human Activity Recognition Using Crowdsourced WiFi Signals and Skeleton Data},
year={2018},
doi:={10.1155/2018/6163475}
}

*****************************************************************
Finished paper and unsubmited:

[1] WiAR: An Public Dataset for WiFi-based Activity Recognition

[2] CAR: CSI-based Coarse-grained Activity Recognition

[3] A Survey on Approaches of Activity Recognition Using WiFi Signals



******************************************************************
IF you need to our help, please contact with us by email.
Email:linlin.teresa.guo@gmail.com.
