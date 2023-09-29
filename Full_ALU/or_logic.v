module or_logic(a, b, res);
	input [31:0] a, b;
	output [31:0] res;
	
	genvar i;
	generate for( i = 0; i < 32; i = i + 1) begin: or_bitwise
		or(res[i], a[i], b[i]);
	end
	endgenerate
	
endmodule
