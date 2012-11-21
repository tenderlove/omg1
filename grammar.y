class MyParser

token A B

rule
  match
    : A    { result = [:A] }
    | A bs { result = [:A, val[1]] }
    ;
  bs
    : B    { result = [:B]; }
    | B bs { result = [:B, val[1]] }
    ;

end

---- header

require 'extras'
