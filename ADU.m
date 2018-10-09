%I am here trying to use class to implement the AD
%{
if we don't have the nargin,we would have not enough inputs,
when initalize the ADU.if we don't have expression r=ADU, we
will get struct after operated.
%}
classdef ADU
    properties
        A
        B
    end
    methods
        function r=ADU(valA,valB)
            if nargin > 0
                r.A=valA;
                r.B=valB;
            end
        end
        function r=plus(obj1,obj2)
            r=ADU;
            r.A=obj1.A+obj2.A;
            r.B=obj1.B+obj2.B;
        end
        function r=mtimes(obj1,obj2)
            r=ADU;
            r.A=obj1.A*obj2.A;
            r.B=obj1.B*obj2.A+obj1.A*obj2.B;
        end
        function r=sin(obj)
            r=ADU;
            r.A=sin(obj.A);
            r.B=cos(obj.A)*obj.B;
        end
        function r=cos(obj)
            r=ADU;
            r.A=cos(obj.A);
            r.B=-sin(obj.A)*obj.B;
        end
    end
end
