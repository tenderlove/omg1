class MyParser

token A B

rule
  match
    : A
    | A bs
    ;
  bs
    : B
    | B bs
    ;

end

---- header

require 'extras'
