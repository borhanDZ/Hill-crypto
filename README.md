# Hill-crypto
1. We start by grouping the letters of the plain text into blocks of **m** characters.
2. Each block is digitized.
3. We code each block using a certain matrix.
4. We transform the results into letters.
5. Calculations are made according to the number of letters of the alphabet. 

![char](screenshots/chars.png)

We are working with an alphabet of 29 characters because 29 is a prime number.
## Algorithm of Hill
#### Example:
let's say we have the message **"NO RESPONSE"** using a block length **m = 2** and a matrix of key T = ![code1](screenshots/code1.png)
1. The letters **2** to **2** are grouped together: **PA SD ER EP ON SE**
2. By digit each block, we obtain:

  ![code2](screenshots/code2.png)
 
3. We code each pair by multiplying it by **T**: 
Thus, for the first couple![code3](screenshots/code3.png), we calculate: ![code4](screenshots/code41.png)
