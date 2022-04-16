
// class WaveLogger;
//     function new();
//         $error("unimmplement method");
//     endfunction //new()

//     function LogBit(string name, logic signal);
//         $error("unimmplement method");
//     endfunction //LogBit

//     function Save();
//         $error("unimmplement method");
//     endfunction //Save
// endclass //WaveLogger

class JsonWaveLogger;
    integer fd;

    function new();
        $display("create file");
        fd = $fopen("wave.json","w");
    endfunction //new()

    function LogBit(string name, logic signal);
        // map[name] = signal
    endfunction

    function _serialize();
        $display("serialize file");
        $fdisplay(fd, "{signal:[{name:'a',wave:'1.........'},{name:'b',wave:'0.........'},{},{name:'user',wave:'1.........'},{name:'exp',wave:'1.........'},{},{name:'mismatch',wave:'0.........'}]}");
    endfunction

    function Save();
        _serialize();
        $display("close file");
        $fclose(fd);
    endfunction
endclass //JsonWaveLogger extends WaveLogger

// logger
// WaveLogger logger = _logger;

module exam_checker();
    JsonWaveLogger _logger = new;
    // input
    reg a,b;

    // expect answer
    wire ao;

    // user answer
    wire uo;

    // user is correct?
    wire mismatch;
    reg failed = 0;
    assign mismatch = ao ^ uo;
    always @(posedge mismatch) begin
        failed = 1;
        $display("MisMatch!");
    end

    answer aa(a, b, ao);
    user_answer ua(a, b, uo);

    initial begin
        a = 0;
        b = 0;

        #5 a = 1;
        #10 b = 1;
        #3 a = 0;
        #2;
        $display("Sim Done!");

        _logger.Save();
    end

endmodule
