 function mult = produit(m1,m2 )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
  if size(m1,2) == size(m2,1)
     for i=1 : size(m1,1)
       for j=1 : size(m2,2)
           mult(i,j)= 0;
         for k=1 : size(m1,2)
             mult(i,j) =mult(i,j) + m1(i,k) * m2(k,j);
         end
       end
     end
 else
      disp('Nb colon m1 not egale Nb ligne m2');
 end       

end

