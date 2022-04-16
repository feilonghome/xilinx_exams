
module exam_checker();
    // input
    reg a,b;

    // expect answer
    wire ao;

    // user answer
    wire uo;

    // user is correct?
    wire correct;
    assign correct = ao & uo;

    answer aa(a, b, ao);
    user_answer ua(a, b, uo);

    initial begin
        a = 0;
        b = 0;

        #5 a = 1;
        #10 b = 1;
        #3 a = 0;
        #2;
    end

endmodule
