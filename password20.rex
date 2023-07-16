/* rexx */                                                                      
 /* trace r */
/* domain has no vowels,   */                
/* no Q or G because those are hard to distinguish in lower case sometimes  */   
/* no L because lowercase L is often confused with number one (i.e., 1l  )  */
do 20
Domain = 'BCDFHJKMNPRSTVXZ'  
Pass = ''  
call Append_Upper 
call Append_Lower
Pass = Pass || '#' || RANDOM(0,9)                                               
call Append_Upper
do 3
   call Append_Lower
end

say Pass                                                 


end                                                           
EXIT                                                                            

Append_Lower:
Upper = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
Lower = 'abcdefghijklmnopqrstuvwxyz'
RandomNbr = RANDOM(1,LENGTH(Domain))                                         
Pass = Pass || TRANSLATE(SUBSTR(Domain,RandomNbr,1),Lower, Upper)
Domain = DELSTR(Domain,RandomNbr,1)
return

Append_Upper:
RandomNbr = RANDOM(1,LENGTH(Domain))                                         
Pass = Pass || (SUBSTR(Domain,RandomNbr,1))
Domain = DELSTR(Domain,RandomNbr,1)
return
