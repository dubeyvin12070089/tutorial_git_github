class static_pro;
	int a;
	static int b;
	function new();
		//count_transaction();
		b++;
	endfunction

	//static function void count_transaction();
	//	b++;
	//endfunction
endclass


module tb;

	static_pro p1, p2;
	
	initial begin
		
		p1 = new();
		p2 = new();
		$display(" %m b = %d",p1.b);
	end

endmodule



class para#( parameter int DATA_WIDTH = 8 );
	bit [DATA_WIDTH-1:0] a;
	static int b;
	function new();
		b++;
	endfunction
endclass
 
module tb1;
	para #(64) p1;
	para #(64) p2;
	initial
	begin
		p1=new();
		p2 = new();
		$display(" %m data_width = %d",p2.b);
	end
endmodule
