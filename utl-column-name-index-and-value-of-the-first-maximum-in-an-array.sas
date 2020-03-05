SAS Forum: Column name index and value of the first maximum in an array

github
https://tinyurl.com/tht6lz6
https://github.com/rogerjdeangelis/utl-column-name-index-and-value-of-the-first-maximum-in-an-array

SAS Forum
https://tinyurl.com/vn7klm2
https://communities.sas.com/t5/SAS-Programming/Maximum-value-related-question/m-p/628227

Ballardw profile
https://communities.sas.com/t5/user/viewprofilepage/user-id/13884

This is worth repeating


I want
  1. The first max value in an array
  2. I want the index of the max value
  3. I want the variable name of the first first maximum

 *_                   _
(_)_ __  _ __  _   _| |_
| | '_ \| '_ \| | | | __|
| | | | | |_) | |_| | |_
|_|_| |_| .__/ \__,_|\__|
        |_|
;


array nums[5] a b c d e  ( 5 8 1 8 7 );

*                _       _
  _____  ___ __ | | __ _(_)_ __
 / _ \ \/ / '_ \| |/ _` | | '_ \
|  __/>  <| |_) | | (_| | | | | |
 \___/_/\_\ .__/|_|\__,_|_|_| |_|
          |_|
;

The fist maximum is


               N
               A
               M
               E

               O
               F

               M             M
               A             A
               X             X
               |             |
array nums[5] a b c d e  ( 5 8 1 8 7 );
                             |
                             V
                       index = 2


  8  is the first max value in an array
  2  is the index of the max value
  B  is the variable name of the first first maximum

*            _               _
  ___  _   _| |_ _ __  _   _| |_
 / _ \| | | | __| '_ \| | | | __|
| (_) | |_| | |_| |_) | |_| | |_
 \___/ \__,_|\__| .__/ \__,_|\__|
                |_|
;

WORK.WANT total obs=1

bs    A    B    C    D    E    MAXVALUE    INDEX    VAIABLE

1     5    8    1    8    7        8         2         B

*
 _ __  _ __ ___   ___ ___  ___ ___
| '_ \| '__/ _ \ / __/ _ \/ __/ __|
| |_) | | | (_) | (_|  __/\__ \__ \
| .__/|_|  \___/ \___\___||___/___/
|_|
;
data have;

  array nums[5] a b c d e  ( 5 8 1 8 7 );

  maxvalue=MAX(of nums[*]);
  index= whichn(maxvalue,of nums[*]);
  vaiable= vname(nums[whichn(maxvalue,of nums[*])]);

run;quit;


