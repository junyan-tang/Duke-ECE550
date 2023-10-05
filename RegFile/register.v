module register(d, en, clk, clr, q);
	input [31:0] d;
	input en, clk, clr;

	output [31:0] q;
	
	genvar i;
	generate
		for(i = 0; i < 32; i = i + 1) begin: dffe_loop
			dffe_ref dffe(q[i], d[i], clk, en, clr);
		end
	endgenerate
endmodule
