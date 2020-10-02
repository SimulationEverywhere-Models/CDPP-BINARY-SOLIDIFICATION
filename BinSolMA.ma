[top]
components : field

[field]
type : cell
dim : (30,30,2)
delay : transport
defaultDelayTime  : 100
border : nowrapped
neighbors : field(-2,-2,0) field(-2,-1,0) field(-2,0,0) field(-2,1,0) field(-2,2,0)
neighbors : field(-1,-2,0) field(-1,-1,0) field(-1,0,0) field(-1,1,0) field(-1,2,0)
neighbors : field(0,-2,0) field(0,-1,0) field(0,0,0) field(0,1,0) field(0,2,0)
neighbors : field(1,-2,0) field(1,-1,0) field(1,0,0) field(1,1,0) field(1,2,0)
neighbors : field(2,-2,0) field(2,-1,0) field(2,0,0) field(2,1,0) field(2,2,0)     
neighbors :                               field(0,0,1)          
initialvalue : 0.65
initialCellsValue : BinSol.val
localtransition : calculus

[calculus]
rule : { IF( fractional((0,0,0)) < ( 0.8  - ( 0.01 * ( 20 -
((2 * if(isUndefined((-2,-2,0)),0,trunc((-2,-2,0)))) + 
(2 * if(isUndefined((-2,-1,0)),0,trunc((-2,-1,0)))) + 
(2 * if(isUndefined((-2,0,0)),0,trunc((-2,0,0)))) + 
(2 * if(isUndefined((-2,1,0)),0,trunc((-2,1,0)))) +
(2 * if(isUndefined((-2,2,0)),0,trunc((-2,2,0)))) + 
(2 * if(isUndefined((-1,-2,0)),0,trunc((-1,-2,0)))) + 
(2 * if(isUndefined((-1,2,0)),0,trunc((-1,2,0)))) + 
(2 * if(isUndefined((0,-2,0)),0,trunc((0,-2,0)))) +
(2 * if(isUndefined((0,2,0)),0,trunc((0,2,0)))) + 
(2 * if(isUndefined((1,-2,0)),0,trunc((1,-2,0)))) + 
(2 * if(isUndefined((1,2,0)),0,trunc((1,2,0)))) + 
(2 * if(isUndefined((2,-2,0)),0,trunc((2,-2,0)))) +
(2 * if(isUndefined((2,-1,0)),0,trunc((2,-1,0)))) + 
(2 * if(isUndefined((2,0,0)),0,trunc((2,0,0)))) + 
(2 * if(isUndefined((2,1,0)),0,trunc((2,1,0)))) + 
(2 * if(isUndefined((2,2,0)),0,trunc((2,2,0)))) +
(1 * if(isUndefined((-1,-1,0)),0,trunc((-1,-1,0)))) + 
(1 * if(isUndefined((-1,0,0)),0,trunc((-1,0,0)))) + 
(1 * if(isUndefined((-1,1,0)),0,trunc((-1,1,0)))) +
(1 * if(isUndefined((0,-1,0)),0,trunc((0,-1,0)))) +
(1 * if(isUndefined((0,1,0)),0,trunc((0,1,0)))) +
(1 * if(isUndefined((1,-1,0)),0,trunc((1,-1,0)))) +
(1 * if(isUndefined((1,0,0)),0,trunc((1,0,0)))) +
(1 * if(isUndefined((1,1,0)),0,trunc((1,1,0)))))))), (2 + fractional((0,0,0))) , (0,0,0) )
} 100 { Cellpos(2) = 0 and (0,0,1) = 1 and trunc((0,0,0)) = 0}

rule : { IF((
(if(IsUndefined((-1,-1,0)) or trunc((-1,-1,0)) = 0,0,1)) +
(if(IsUndefined((-1,0,0)) or trunc((-1,0,0)) = 0,0,1)) +
(if(IsUndefined((-1,1,0)) or trunc((-1,1,0)) = 0,0,1)) +
(if(IsUndefined((0,-1,0)) or trunc((0,-1,0)) = 0,0,1)) +
(if(IsUndefined((0,1,0)) or trunc((0,1,0)) = 0,0,1)) +
(if(IsUndefined((1,-1,0)) or trunc((1,-1,0)) = 0,0,1)) +
(if(IsUndefined((1,0,0)) or trunc((1,0,0)) = 0,0,1)) +
(if(IsUndefined((1,1,0)) or trunc((1,1,0)) = 0,0,1))) = 8, fractional((0,0,0)) ,(0,0,0))
} 100 { cellpos(2) = 0 and (0,0,1) = 2 and trunc((0,0,0)) = 2}

rule : { (if(IsUndefined((-1,-1,0)) or trunc((-1,-1,0)) = 0,0,1)) +
(if(IsUndefined((-1,0,0)) or trunc((-1,0,0)) = 0,0,1)) +
(if(IsUndefined((-1,1,0)) or trunc((-1,1,0)) = 0,0,1)) +
(if(IsUndefined((0,-1,0)) or trunc((0,-1,0)) = 0,0,1)) +
(if(IsUndefined((0,1,0)) or trunc((0,1,0)) = 0,0,1)) +
(if(IsUndefined((1,-1,0)) or trunc((1,-1,0)) = 0,0,1)) +
(if(IsUndefined((1,0,0)) or trunc((1,0,0)) = 0,0,1)) +
(if(IsUndefined((1,1,0)) or trunc((1,1,0)) = 0,0,1)) + (0,0,0)
} 100 { cellpos(2) = 0 and (0,0,1) = 3 and trunc((0,0,0)) = 2}


rule : { if(((if(IsUndefined((-1,-1,0)) or trunc((-1,-1,0)) < 2,0,fractional((-1,-1,0))/(trunc((-1,-1,0)) - 2))) +
(if(IsUndefined((-1,0,0)) or trunc((-1,0,0)) < 2,0,fractional((-1,0,0))/(trunc((-1,0,0)) - 2))) +
(if(IsUndefined((-1,1,0)) or trunc((-1,1,0)) < 2,0,fractional((-1,1,0))/(trunc((-1,1,0)) - 2))) +
(if(IsUndefined((0,-1,0)) or trunc((0,-1,0)) < 2,0,fractional((0,-1,0))/(trunc((0,-1,0)) - 2))) +
(if(IsUndefined((0,1,0)) or trunc((0,1,0)) < 2,0,fractional((0,1,0))/(trunc((0,1,0)) - 2))) +
(if(IsUndefined((1,-1,0)) or trunc((1,-1,0)) < 2,0,fractional((1,-1,0))/(trunc((1,-1,0)) - 2))) +
(if(IsUndefined((1,0,0)) or trunc((1,0,0)) < 2,0,fractional((1,0,0))/(trunc((1,0,0)) - 2))) +
(if(IsUndefined((1,1,0)) or trunc((1,1,0)) < 2,0,fractional((1,1,0))/(trunc((1,1,0)) - 2))) + fractional((0,0,0))) > 1,(99+fractional((0,0,0))),
((if(IsUndefined((-1,-1,0)) or trunc((-1,-1,0)) < 2,0,fractional((-1,-1,0))/(trunc((-1,-1,0)) - 2))) +
(if(IsUndefined((-1,0,0)) or trunc((-1,0,0)) < 2,0,fractional((-1,0,0))/(trunc((-1,0,0)) - 2))) +
(if(IsUndefined((-1,1,0)) or trunc((-1,1,0)) < 2,0,fractional((-1,1,0))/(trunc((-1,1,0)) - 2))) +
(if(IsUndefined((0,-1,0)) or trunc((0,-1,0)) < 2,0,fractional((0,-1,0))/(trunc((0,-1,0)) - 2))) +
(if(IsUndefined((0,1,0)) or trunc((0,1,0)) < 2,0,fractional((0,1,0))/(trunc((0,1,0)) - 2))) +
(if(IsUndefined((1,-1,0)) or trunc((1,-1,0)) < 2,0,fractional((1,-1,0))/(trunc((1,-1,0)) - 2))) +
(if(IsUndefined((1,0,0)) or trunc((1,0,0)) < 2,0,fractional((1,0,0))/(trunc((1,0,0)) - 2))) +
(if(IsUndefined((1,1,0)) or trunc((1,1,0)) < 2,0,fractional((1,1,0))/(trunc((1,1,0)) - 2))) + (0,0,0)))
} 100 { cellpos(2) = 0 and (0,0,1) = 4 and trunc((0,0,0)) = 0}

rule : { if((if(trunc((-1,-1,0)) = 99,1,0) +
if(trunc((-1,0,0)) = 99,1,0) +
if(trunc((-1,1,0)) = 99,1,0) +
if(trunc((0,-1,0)) = 99,1,0) +
if(trunc((0,1,0)) = 99,1,0) +
if(trunc((1,-1,0)) = 99,1,0) +
if(trunc((1,0,0)) = 99,1,0) +
if(trunc((1,1,0)) = 99,1,0)) > 1, fractional((0,0,0)),(0,0,0))
} 100 { cellpos(2) = 0 and (0,0,1) = 5 and trunc((0,0,0)) = 2}


rule : 1 100 { cellpos(2) = 0 and (0,0,1) = 6 and trunc((0,0,0)) > 1 and trunc((0,0,0)) != 99 }

rule : { fractional((0,0,0)) } 100 {cellpos(2) = 0 and (0,0,1) = 7 and trunc((0,0,0)) = 99 }

rule : { ((1 - (0.00001 * (
if(IsUndefined((-1,-1,0)) or trunc((-1,-1,0)) = 1,0,1) +
if(IsUndefined((-1,1,0)) or trunc((-1,1,0)) = 1,0,1) +
if(IsUndefined((1,1,0)) or trunc((1,1,0)) = 1,0,1) +
if(IsUndefined((1,-1,0)) or trunc((1,-1,0)) = 1,0,1))) - (0.00001 * (
if(IsUndefined((-1,0,0)) or trunc((-1,0,0)) = 1,0,1) +
if(IsUndefined((0,1,0)) or trunc((0,1,0)) = 1,0,1) +
if(IsUndefined((1,0,0)) or trunc((1,0,0)) = 1,0,1) +
if(IsUndefined((0,-1,0)) or trunc((0,-1,0)) = 1,0,1)))) * fractional((0,0,0))) + (0.00001 * (
if(IsUndefined((-1,-1,0)) or trunc((-1,-1,0))= 1,0,fractional((-1,-1,0))) +
if(IsUndefined((-1,1,0)) or trunc((-1,1,0)) = 1,0,fractional((-1,1,0))) +
if(IsUndefined((1,1,0)) or trunc((1,1,0)) = 1,0,fractional((1,1,0))) +
if(IsUndefined((1,-1,0)) or trunc((1,-1,0)) = 1,0,fractional((1,-1,0))))) + (0.00001 * (
if(IsUndefined((-1,0,0)) or trunc((-1,0,0)) = 1,0,fractional((-1,0,0))) +
if(IsUndefined((0,1,0)) or trunc((0,1,0)) = 1,0,fractional((0,1,0))) +
if(IsUndefined((1,0,0)) or trunc((1,0,0)) = 1,0,fractional((1,0,0))) +
if(IsUndefined((0,-1,0)) or trunc((0,-1,0)) = 1,0,fractional((0,-1,0)))))
} 100 { cellpos(2) = 0 and (0,0,1) >= 8 and trunc((0,0,0)) = 0 }

rule : { (0,0,0) + 1 } 100 { (0,0,0) <= 15 and (0,0,0) >= 1 and Cellpos(2) = 1 }

rule : 1 100 { Cellpos(2) = 1 }

rule : { (0,0,0) } 100 { t }
