

 LOOP1: READ X 
        LOAD X 
        BRZERO OUT1
        BRNEG LOOP1 
        COPY Z X
          
 LOOP2: LOAD Z
        SUB 7
        STORE Z 
        BRZERO OUT3
        BRNEG OUT4 
        BR LOOP2 
        
        
  OUT4: NOOP
        COPY Z X 
 
 LOOP3: LOAD Z 
        SUB 13
        STORE Z  
        BRZERO OUT3
        BRNEG LOOP1
        BR LOOP3
      
        
 OUT3:  LOAD X 
        STORE X 
        PUSH 
        STACKW 0
        LOAD Y  
        ADD 1 
        STORE Y 
        BR LOOP1
   
 OUT1:  NOOP
        LOAD Y 
        BRZERO OUT5

        
        WRITE Y 
        
 LOOP4: STACKR 0
        STORE X 
        WRITE X  
        LOAD W
        ADD X 
        STORE W 
        POP 
        LOAD Y 
        SUB 1
        BRZNEG OUT2 
        STORE Y 
        BR LOOP4 
       
 OUT2: NOOP  
       WRITE W 

 OUT5: STOP

W 0
X 0
Y 0
Z 0
