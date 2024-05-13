// 
// Politecnico di Milano
// Code created using PandA - Version: PandA 0.9.6 - Revision 891ec3caed502474cab0813cc4a9fc678deabaa5 - Date 2022-06-14T20:04:37
// bambu executed with: bambu -I/home/dews/Scrivania/bambu-hls/RESULTS/Bambu/5SGXEA7N2F45C1-Stratix-V/28x28/dijkstra/includes/values_14 --simulate --simulator=VERILATOR --clock-period=5 --device-name=5SGXEA7N2F45C1 /home/dews/Scrivania/bambu-hls/cc4cs_bambu/benchmarkBasic/dijkstra/thrd.c 
// 
// Send any bug to: panda-info@polimi.it
// ************************************************************************
// The following text holds for all the components tagged with PANDA_LGPLv3.
// They are all part of the BAMBU/PANDA IP LIBRARY.
// This library is free software; you can redistribute it and/or
// modify it under the terms of the GNU Lesser General Public
// License as published by the Free Software Foundation; either
// version 3 of the License, or (at your option) any later version.
// 
// This library is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
// Lesser General Public License for more details.
// 
// You should have received a copy of the GNU Lesser General Public
// License along with the PandA framework; see the files COPYING.LIB
// If not, see <http://www.gnu.org/licenses/>.
// ************************************************************************

`ifdef __ICARUS__
  `define _SIM_HAVE_CLOG2
`endif
`ifdef VERILATOR
  `define _SIM_HAVE_CLOG2
`endif
`ifdef MODEL_TECH
  `define _SIM_HAVE_CLOG2
`endif
`ifdef VCS
  `define _SIM_HAVE_CLOG2
`endif
`ifdef NCVERILOG
  `define _SIM_HAVE_CLOG2
`endif
`ifdef XILINX_SIMULATOR
  `define _SIM_HAVE_CLOG2
`endif
`ifdef XILINX_ISIM
  `define _SIM_HAVE_CLOG2
`endif

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>, Christian Pilato <christian.pilato@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module constant_value(out1);
  parameter BITSIZE_out1=1, value=1'b0;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = value;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module register_SE(clock, reset, in1, wenable, out1);
  parameter BITSIZE_in1=1, BITSIZE_out1=1;
  // IN
  input clock;
  input reset;
  input [BITSIZE_in1-1:0] in1;
  input wenable;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  
  reg [BITSIZE_out1-1:0] reg_out1 =0;
  assign out1 = reg_out1;
  always @(posedge clock)
    if (wenable)
      reg_out1 <= in1;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module ARRAY_1D_STD_BRAM_NN_SDS_BUS_BASE(clock, reset, in1, in2, in3, out1, sel_LOAD, sel_STORE, S_oe_ram, S_we_ram, S_addr_ram, S_Wdata_ram, Sin_Rdata_ram, Sout_Rdata_ram, S_data_ram_size, Sin_DataRdy, Sout_DataRdy, proxy_in1, proxy_in2, proxy_in3, proxy_sel_LOAD, proxy_sel_STORE, proxy_out1);
  parameter BITSIZE_in1=1, PORTSIZE_in1=2, BITSIZE_in2=1, PORTSIZE_in2=2, BITSIZE_in3=1, PORTSIZE_in3=2, BITSIZE_sel_LOAD=1, PORTSIZE_sel_LOAD=2, BITSIZE_sel_STORE=1, PORTSIZE_sel_STORE=2, BITSIZE_S_oe_ram=1, PORTSIZE_S_oe_ram=2, BITSIZE_S_we_ram=1, PORTSIZE_S_we_ram=2, BITSIZE_out1=1, PORTSIZE_out1=2, BITSIZE_S_addr_ram=1, PORTSIZE_S_addr_ram=2, BITSIZE_S_Wdata_ram=8, PORTSIZE_S_Wdata_ram=2, BITSIZE_Sin_Rdata_ram=8, PORTSIZE_Sin_Rdata_ram=2, BITSIZE_Sout_Rdata_ram=8, PORTSIZE_Sout_Rdata_ram=2, BITSIZE_S_data_ram_size=1, PORTSIZE_S_data_ram_size=2, BITSIZE_Sin_DataRdy=1, PORTSIZE_Sin_DataRdy=2, BITSIZE_Sout_DataRdy=1, PORTSIZE_Sout_DataRdy=2, MEMORY_INIT_file="array.mem", n_elements=1, data_size=32, address_space_begin=0, address_space_rangesize=4, BUS_PIPELINED=1, BRAM_BITSIZE=32, PRIVATE_MEMORY=0, USE_SPARSE_MEMORY=1, HIGH_LATENCY=0, BITSIZE_proxy_in1=1, PORTSIZE_proxy_in1=2, BITSIZE_proxy_in2=1, PORTSIZE_proxy_in2=2, BITSIZE_proxy_in3=1, PORTSIZE_proxy_in3=2, BITSIZE_proxy_sel_LOAD=1, PORTSIZE_proxy_sel_LOAD=2, BITSIZE_proxy_sel_STORE=1, PORTSIZE_proxy_sel_STORE=2, BITSIZE_proxy_out1=1, PORTSIZE_proxy_out1=2;
  // IN
  input clock;
  input reset;
  input [(PORTSIZE_in1*BITSIZE_in1)+(-1):0] in1;
  input [(PORTSIZE_in2*BITSIZE_in2)+(-1):0] in2;
  input [(PORTSIZE_in3*BITSIZE_in3)+(-1):0] in3;
  input [PORTSIZE_sel_LOAD-1:0] sel_LOAD;
  input [PORTSIZE_sel_STORE-1:0] sel_STORE;
  input [PORTSIZE_S_oe_ram-1:0] S_oe_ram;
  input [PORTSIZE_S_we_ram-1:0] S_we_ram;
  input [(PORTSIZE_S_addr_ram*BITSIZE_S_addr_ram)+(-1):0] S_addr_ram;
  input [(PORTSIZE_S_Wdata_ram*BITSIZE_S_Wdata_ram)+(-1):0] S_Wdata_ram;
  input [(PORTSIZE_Sin_Rdata_ram*BITSIZE_Sin_Rdata_ram)+(-1):0] Sin_Rdata_ram;
  input [(PORTSIZE_S_data_ram_size*BITSIZE_S_data_ram_size)+(-1):0] S_data_ram_size;
  input [PORTSIZE_Sin_DataRdy-1:0] Sin_DataRdy;
  input [(PORTSIZE_proxy_in1*BITSIZE_proxy_in1)+(-1):0] proxy_in1;
  input [(PORTSIZE_proxy_in2*BITSIZE_proxy_in2)+(-1):0] proxy_in2;
  input [(PORTSIZE_proxy_in3*BITSIZE_proxy_in3)+(-1):0] proxy_in3;
  input [PORTSIZE_proxy_sel_LOAD-1:0] proxy_sel_LOAD;
  input [PORTSIZE_proxy_sel_STORE-1:0] proxy_sel_STORE;
  // OUT
  output [(PORTSIZE_out1*BITSIZE_out1)+(-1):0] out1;
  output [(PORTSIZE_Sout_Rdata_ram*BITSIZE_Sout_Rdata_ram)+(-1):0] Sout_Rdata_ram;
  output [PORTSIZE_Sout_DataRdy-1:0] Sout_DataRdy;
  output [(PORTSIZE_proxy_out1*BITSIZE_proxy_out1)+(-1):0] proxy_out1;
  
  `ifndef _SIM_HAVE_CLOG2
    function integer log2;
       input integer value;
       integer temp_value;
      begin
        temp_value = value-1;
        for (log2=0; temp_value>0; log2=log2+1)
          temp_value = temp_value>>1;
      end
    endfunction
  `endif
  parameter n_byte_data = BRAM_BITSIZE/8;
  parameter n_bytes = n_elements*n_byte_data;
  parameter n_byte_on_databus = BRAM_BITSIZE/8;
  parameter n_mem_elements = n_bytes/(n_byte_on_databus) + (n_bytes%(n_byte_on_databus) == 0 ? 0 : 1);
  parameter nbit_addr = BITSIZE_in2 > BITSIZE_proxy_in2 ? BITSIZE_in2 : BITSIZE_proxy_in2;
  `ifdef _SIM_HAVE_CLOG2
    parameter nbit_read_addr = n_mem_elements == 1 ? 1 : $clog2(n_mem_elements);
    parameter nbits_address_space_rangesize = $clog2(address_space_rangesize);
    parameter nbits_byte_offset = n_byte_on_databus==1 ? 0 : $clog2(n_byte_on_databus);
  `else
    parameter nbit_read_addr = n_mem_elements == 1 ? 1 : log2(n_mem_elements);
    parameter nbits_address_space_rangesize = log2(address_space_rangesize);
    parameter nbits_byte_offset = n_byte_on_databus==1 ? 0 : log2(n_byte_on_databus);
  `endif
  parameter max_n_writes = PORTSIZE_sel_STORE;
  parameter max_n_reads = PORTSIZE_sel_LOAD;
  parameter max_n_rw = max_n_writes > max_n_reads ? max_n_writes : max_n_reads;
  
  wire [max_n_writes-1:0] bram_write;
  wire [max_n_writes-1:0] bram_write_temp;
  
  wire [nbit_read_addr*max_n_rw-1:0] memory_addr_a;
  wire [nbit_read_addr*max_n_rw-1:0] memory_addr_a_temp;
  
  wire [PORTSIZE_S_addr_ram-1:0] cs;
  wire [PORTSIZE_S_oe_ram-1:0] oe_ram_cs;
  wire [PORTSIZE_S_we_ram-1:0] we_ram_cs;
  wire [data_size*PORTSIZE_S_Wdata_ram-1:0] S_Wdata_ram_int;
  wire [data_size*max_n_writes-1:0] din_value_aggregated;
  wire [data_size*max_n_writes-1:0] din_value_aggregated_temp;
  reg [data_size*max_n_reads-1:0] dout_a =0;
  reg [data_size*max_n_reads-1:0] dout_a_registered =0;
  reg [data_size-1:0] dout_a_registered_0 =0;
  reg [data_size-1:0] dout_a_registered_1 =0;
  wire [nbit_addr*max_n_rw-1:0] tmp_addr;
  wire [nbit_addr*max_n_rw-1:0] relative_addr;
  integer index2;
  reg [PORTSIZE_S_we_ram-1:0] we_ram_cs_delayed =0;
  reg [PORTSIZE_S_oe_ram-1:0] oe_ram_cs_delayed =0;
  reg [PORTSIZE_S_oe_ram-1:0] oe_ram_cs_delayed_registered =0;
  reg [PORTSIZE_S_oe_ram-1:0] oe_ram_cs_delayed_registered1 =0;
  
  reg [data_size-1:0] memory [0:n_mem_elements-1] /* synthesis syn_ramstyle = "no_rw_check" */;
  
  initial
  begin
    $readmemb(MEMORY_INIT_file, memory, 0, n_mem_elements-1);
  end
  
  generate
    if(HIGH_LATENCY==2)
    begin
      (* syn_keep=1 *)reg [nbit_read_addr*max_n_rw-1:0] memory_addr_a_reg =0;
      (* syn_keep=1 *)reg [data_size*max_n_writes-1:0] din_value_aggregated_reg =0;
      (* syn_keep=1 *)reg [max_n_writes-1:0] bram_write_reg =0;
      always @ (posedge clock)
      begin
         memory_addr_a_reg <= memory_addr_a;
         bram_write_reg <= bram_write;
         din_value_aggregated_reg <= din_value_aggregated;
      end
      assign memory_addr_a_temp = memory_addr_a_reg;
      assign bram_write_temp = bram_write_reg;
      assign din_value_aggregated_temp = din_value_aggregated_reg;
    end
    else
    begin
      assign memory_addr_a_temp = memory_addr_a;
      assign bram_write_temp = bram_write;
      assign din_value_aggregated_temp = din_value_aggregated;
    end
  endgenerate
  
  generate
  genvar ind2;
  for (ind2=0; ind2<max_n_rw; ind2=ind2+1)
    begin : Lind2
      assign tmp_addr[(ind2+1)*nbit_addr-1:ind2*nbit_addr] = (proxy_sel_LOAD[ind2]||proxy_sel_STORE[ind2]) ? proxy_in2[(ind2+1)*BITSIZE_proxy_in2-1:ind2*BITSIZE_proxy_in2] : in2[(ind2+1)*BITSIZE_in2-1:ind2*BITSIZE_in2];
    end
  endgenerate
  
  generate
  genvar i3;
    for (i3=0; i3<PORTSIZE_S_addr_ram; i3=i3+1)
    begin : L3
      if(PRIVATE_MEMORY==0 && USE_SPARSE_MEMORY==0)
        assign cs[i3] = (S_addr_ram[(i3+1)*BITSIZE_S_addr_ram-1:i3*BITSIZE_S_addr_ram] >= (address_space_begin)) && (S_addr_ram[(i3+1)*BITSIZE_S_addr_ram-1:i3*BITSIZE_S_addr_ram] < (address_space_begin+address_space_rangesize));
      else if(PRIVATE_MEMORY==0)
        assign cs[i3] = S_addr_ram[(i3+1)*BITSIZE_S_addr_ram-1:i3*BITSIZE_S_addr_ram+nbits_address_space_rangesize] == address_space_begin[nbit_addr-1:nbits_address_space_rangesize];
      else
        assign cs[i3] = 1'b0;
    end
  endgenerate
  
  generate
  genvar i4;
    for (i4=0; i4<PORTSIZE_S_oe_ram; i4=i4+1)
    begin : L4
      assign oe_ram_cs[i4] = S_oe_ram[i4] & cs[i4];
    end
  endgenerate
  
  generate
  genvar i5;
    for (i5=0; i5<PORTSIZE_S_we_ram; i5=i5+1)
    begin : L5
      assign we_ram_cs[i5] = S_we_ram[i5] & cs[i5];
    end
  endgenerate
  
  generate
  genvar i6;
    for (i6=0; i6<max_n_rw; i6=i6+1)
    begin : L6
      if(PRIVATE_MEMORY==0 && USE_SPARSE_MEMORY==0 && i6< PORTSIZE_S_addr_ram)
        assign relative_addr[(i6+1)*nbit_addr-1:i6*nbit_addr] = ((i6 < max_n_writes && (sel_STORE[i6]==1'b1 || proxy_sel_STORE[i6]==1'b1)) || (i6 < max_n_reads && (sel_LOAD[i6]==1'b1 || proxy_sel_LOAD[i6]==1'b1))) ? tmp_addr[(i6+1)*BITSIZE_in2-1:i6*BITSIZE_in2]-address_space_begin: S_addr_ram[(i6+1)*BITSIZE_S_addr_ram-1:i6*BITSIZE_S_addr_ram]-address_space_begin;
      else if(PRIVATE_MEMORY==0 && i6< PORTSIZE_S_addr_ram)
        assign relative_addr[(i6)*nbit_addr+nbits_address_space_rangesize-1:i6*nbit_addr] = ((i6 < max_n_writes && (sel_STORE[i6]==1'b1 || proxy_sel_STORE[i6]==1'b1)) || (i6 < max_n_reads && (sel_LOAD[i6]==1'b1 || proxy_sel_LOAD[i6]==1'b1))) ? tmp_addr[(i6)*BITSIZE_in2+nbits_address_space_rangesize-1:i6*BITSIZE_in2] : S_addr_ram[(i6)*BITSIZE_S_addr_ram+nbits_address_space_rangesize-1:i6*BITSIZE_S_addr_ram];
      else if(USE_SPARSE_MEMORY==1)
        assign relative_addr[(i6)*nbit_addr+nbits_address_space_rangesize-1:i6*nbit_addr] = tmp_addr[(i6)*BITSIZE_in2+nbits_address_space_rangesize-1:i6*BITSIZE_in2];
      else
        assign relative_addr[(i6+1)*nbit_addr-1:i6*nbit_addr] = tmp_addr[(i6+1)*BITSIZE_in2-1:i6*BITSIZE_in2]-address_space_begin;
    end
  endgenerate
  
  generate
  genvar i7;
    for (i7=0; i7<max_n_rw; i7=i7+1)
    begin : L7_A
      if (n_mem_elements==1)
        assign memory_addr_a[(i7+1)*nbit_read_addr-1:i7*nbit_read_addr] = {nbit_read_addr{1'b0}};
      else
        assign memory_addr_a[(i7+1)*nbit_read_addr-1:i7*nbit_read_addr] = relative_addr[nbit_read_addr+nbits_byte_offset-1+i7*nbit_addr:nbits_byte_offset+i7*nbit_addr];
    end
  endgenerate
    
  generate
  genvar i13;
    for (i13=0; i13<PORTSIZE_S_Wdata_ram; i13=i13+1)
    begin : L13
      if (BITSIZE_S_Wdata_ram < data_size)
        assign S_Wdata_ram_int[data_size*(i13+1)-1:data_size*i13] = {{data_size-BITSIZE_S_Wdata_ram{1'b0}}, S_Wdata_ram[(i13+1)*BITSIZE_S_Wdata_ram-1:BITSIZE_S_Wdata_ram*i13]};
      else
        assign S_Wdata_ram_int[data_size*(i13+1)-1:data_size*i13] = S_Wdata_ram[data_size+BITSIZE_S_Wdata_ram*i13-1:BITSIZE_S_Wdata_ram*i13];
    end
  endgenerate
  
  generate
  genvar i14;
    for (i14=0; i14<max_n_writes; i14=i14+1)
    begin : L14
      if(PRIVATE_MEMORY==0 && i14 < PORTSIZE_S_Wdata_ram)
        assign din_value_aggregated[(i14+1)*data_size-1:i14*data_size] = proxy_sel_STORE[i14] ? proxy_in1[(i14+1)*BITSIZE_proxy_in1-1:i14*BITSIZE_proxy_in1] : (sel_STORE[i14] ? in1[(i14+1)*BITSIZE_in1-1:i14*BITSIZE_in1] : S_Wdata_ram_int[data_size*(i14+1)-1:data_size*i14]);
      else
        assign din_value_aggregated[(i14+1)*data_size-1:i14*data_size] = proxy_sel_STORE[i14] ? proxy_in1[(i14+1)*BITSIZE_proxy_in1-1:i14*BITSIZE_proxy_in1] : in1[(i14+1)*BITSIZE_in1-1:i14*BITSIZE_in1];
    end
  endgenerate
  
  generate
  genvar i11, i12;
    if(n_mem_elements==1)
    begin : single_element
      always @(posedge clock)
      begin
        for (index2=0; index2<max_n_reads; index2=index2+1)
        begin : L12_single_read
          if(HIGH_LATENCY==0)
          begin
            dout_a[data_size*index2+:data_size] <= memory[memory_addr_a_temp[nbit_read_addr*index2+:nbit_read_addr]];
          end
          else
          begin
            dout_a_registered[data_size*index2+:data_size] <= memory[memory_addr_a_temp[nbit_read_addr*index2+:nbit_read_addr]];
            dout_a[data_size*index2+:data_size] <= dout_a_registered[data_size*index2+:data_size];
          end
        end
        for (index2=0; index2<max_n_writes; index2=index2+1)
        begin : L12_single_write
          if(bram_write_temp[index2])
          memory[memory_addr_a_temp[nbit_read_addr*index2+:nbit_read_addr]] <= din_value_aggregated_temp[data_size*index2+:data_size];
        end
      end
    end
    else
    begin : multiple_elements
      if(max_n_rw ==2)
      begin
        always @(posedge clock)
        begin
          if(bram_write_temp[0])
            memory[memory_addr_a_temp[nbit_read_addr*(0+1)-1:nbit_read_addr*0]] <= din_value_aggregated_temp[data_size*0+:data_size];
          if(HIGH_LATENCY==0)
          begin
            dout_a[data_size*(0+1)-1:data_size*0] <= memory[memory_addr_a_temp[nbit_read_addr*(0+1)-1:nbit_read_addr*0]];
          end
          else
          begin
            dout_a_registered_0 <= memory[memory_addr_a_temp[nbit_read_addr*(0+1)-1:nbit_read_addr*0]];
            dout_a[data_size*(0+1)-1:data_size*0] <= dout_a_registered_0;
          end
        end
        always @(posedge clock)
        begin
          if(bram_write_temp[1])
            memory[memory_addr_a_temp[nbit_read_addr*(1+1)-1:nbit_read_addr*1]] <= din_value_aggregated_temp[data_size*1+:data_size];
          if(HIGH_LATENCY==0)
          begin
            dout_a[data_size*(1+1)-1:data_size*1] <= memory[memory_addr_a_temp[nbit_read_addr*(1+1)-1:nbit_read_addr*1]];
          end
          else
          begin
            dout_a_registered_1 <= memory[memory_addr_a_temp[nbit_read_addr*(1+1)-1:nbit_read_addr*1]];
            dout_a[data_size*(1+1)-1:data_size*1] <= dout_a_registered_1;
          end
        end
      end
      else
      begin
        //not supported
      end
    end    
  endgenerate
    
  generate
  genvar i20;
    for (i20=0; i20<max_n_reads; i20=i20+1)
    begin : L20
      assign out1[(i20+1)*BITSIZE_out1-1:i20*BITSIZE_out1] = dout_a[(i20+1)*data_size-1:i20*data_size];
      assign proxy_out1[(i20+1)*BITSIZE_proxy_out1-1:i20*BITSIZE_proxy_out1] = dout_a[(i20+1)*data_size-1:i20*data_size];
    end
  endgenerate
  
  generate
  genvar i16;
    for (i16=0; i16<PORTSIZE_S_oe_ram; i16=i16+1)
    begin : L16
      always @(posedge clock )
      begin
        if(reset == 1'b0)
          begin
            oe_ram_cs_delayed[i16] <= 1'b0;
            if(HIGH_LATENCY!=0) oe_ram_cs_delayed_registered[i16] <= 1'b0;
            if(HIGH_LATENCY == 2) oe_ram_cs_delayed_registered1[i16] <= 1'b0;
          end
        else
          begin
            if(HIGH_LATENCY==0)
              oe_ram_cs_delayed[i16] <= oe_ram_cs[i16] & (!oe_ram_cs_delayed[i16] | BUS_PIPELINED);
            else if(HIGH_LATENCY==1)
            begin
              oe_ram_cs_delayed_registered[i16] <= oe_ram_cs[i16] & ((!oe_ram_cs_delayed_registered[i16] & !oe_ram_cs_delayed[i16]) | BUS_PIPELINED);
              oe_ram_cs_delayed[i16] <= oe_ram_cs_delayed_registered[i16];
            end
            else
            begin
              oe_ram_cs_delayed_registered1[i16] <= oe_ram_cs[i16] & ((!oe_ram_cs_delayed_registered1[i16] & !oe_ram_cs_delayed_registered[i16]) | BUS_PIPELINED);
              oe_ram_cs_delayed_registered[i16] <= oe_ram_cs_delayed_registered1[i16];
              oe_ram_cs_delayed[i16] <= oe_ram_cs_delayed_registered[i16];
            end
          end
      end
    end
  endgenerate
  
  generate
  genvar i17;
    for (i17=0; i17<PORTSIZE_S_we_ram; i17=i17+1)
    begin : L17
      always @(posedge clock )
      begin
        if(reset == 1'b0)
          we_ram_cs_delayed[i17] <= 1'b0;
        else
          we_ram_cs_delayed[i17] <= we_ram_cs[i17] & !we_ram_cs_delayed[i17];
      end
    end
  endgenerate
  
  generate
  genvar i18;
    for (i18=0; i18<PORTSIZE_Sout_Rdata_ram; i18=i18+1)
    begin : L18
      if(PRIVATE_MEMORY==1)
        assign Sout_Rdata_ram[(i18+1)*BITSIZE_Sout_Rdata_ram-1:i18*BITSIZE_Sout_Rdata_ram] = Sin_Rdata_ram[(i18+1)*BITSIZE_Sin_Rdata_ram-1:i18*BITSIZE_Sin_Rdata_ram];
      else if (BITSIZE_Sout_Rdata_ram <= data_size)
        assign Sout_Rdata_ram[(i18+1)*BITSIZE_Sout_Rdata_ram-1:i18*BITSIZE_Sout_Rdata_ram] = oe_ram_cs_delayed[i18] ? dout_a[BITSIZE_Sout_Rdata_ram+i18*data_size-1:i18*data_size] : Sin_Rdata_ram[(i18+1)*BITSIZE_Sin_Rdata_ram-1:i18*BITSIZE_Sin_Rdata_ram];
      else
        assign Sout_Rdata_ram[(i18+1)*BITSIZE_Sout_Rdata_ram-1:i18*BITSIZE_Sout_Rdata_ram] = oe_ram_cs_delayed[i18] ? {{BITSIZE_S_Wdata_ram-data_size{1'b0}}, dout_a[(i18+1)*data_size-1:i18*data_size]} : Sin_Rdata_ram[(i18+1)*BITSIZE_Sin_Rdata_ram-1:i18*BITSIZE_Sin_Rdata_ram];
    end
  endgenerate
  
  generate
  genvar i19;
    for (i19=0; i19<PORTSIZE_Sout_DataRdy; i19=i19+1)
    begin : L19
      if(PRIVATE_MEMORY==0)
        assign Sout_DataRdy[i19] = (i19 < PORTSIZE_S_oe_ram && oe_ram_cs_delayed[i19]) | Sin_DataRdy[i19] | (i19 < PORTSIZE_S_we_ram && we_ram_cs_delayed[i19]);
      else
        assign Sout_DataRdy[i19] = Sin_DataRdy[i19];
    end
  endgenerate
  
  generate
  genvar i21;
    for (i21=0; i21<max_n_writes; i21=i21+1)
    begin : L21
      if(i21 < PORTSIZE_S_we_ram)
        assign bram_write[i21] = (sel_STORE[i21] || proxy_sel_STORE[i21] || we_ram_cs[i21]);
      else
        assign bram_write[i21] = (sel_STORE[i21] || proxy_sel_STORE[i21]);
    end
  endgenerate
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module ARRAY_1D_STD_BRAM_NN_SDS_BUS(clock, reset, in1, in2, in3, in4, out1, sel_LOAD, sel_STORE, S_oe_ram, S_we_ram, S_addr_ram, S_Wdata_ram, Sin_Rdata_ram, Sout_Rdata_ram, S_data_ram_size, Sin_DataRdy, Sout_DataRdy, proxy_in1, proxy_in2, proxy_in3, proxy_sel_LOAD, proxy_sel_STORE, proxy_out1);
  parameter BITSIZE_in1=1, PORTSIZE_in1=2, BITSIZE_in2=1, PORTSIZE_in2=2, BITSIZE_in3=1, PORTSIZE_in3=2, BITSIZE_in4=1, PORTSIZE_in4=2, BITSIZE_sel_LOAD=1, PORTSIZE_sel_LOAD=2, BITSIZE_sel_STORE=1, PORTSIZE_sel_STORE=2, BITSIZE_S_oe_ram=1, PORTSIZE_S_oe_ram=2, BITSIZE_S_we_ram=1, PORTSIZE_S_we_ram=2, BITSIZE_out1=1, PORTSIZE_out1=2, BITSIZE_S_addr_ram=1, PORTSIZE_S_addr_ram=2, BITSIZE_S_Wdata_ram=8, PORTSIZE_S_Wdata_ram=2, BITSIZE_Sin_Rdata_ram=8, PORTSIZE_Sin_Rdata_ram=2, BITSIZE_Sout_Rdata_ram=8, PORTSIZE_Sout_Rdata_ram=2, BITSIZE_S_data_ram_size=1, PORTSIZE_S_data_ram_size=2, BITSIZE_Sin_DataRdy=1, PORTSIZE_Sin_DataRdy=2, BITSIZE_Sout_DataRdy=1, PORTSIZE_Sout_DataRdy=2, MEMORY_INIT_file="array.mem", n_elements=1, data_size=32, address_space_begin=0, address_space_rangesize=4, BUS_PIPELINED=1, BRAM_BITSIZE=32, PRIVATE_MEMORY=0, USE_SPARSE_MEMORY=1, BITSIZE_proxy_in1=1, PORTSIZE_proxy_in1=2, BITSIZE_proxy_in2=1, PORTSIZE_proxy_in2=2, BITSIZE_proxy_in3=1, PORTSIZE_proxy_in3=2, BITSIZE_proxy_sel_LOAD=1, PORTSIZE_proxy_sel_LOAD=2, BITSIZE_proxy_sel_STORE=1, PORTSIZE_proxy_sel_STORE=2, BITSIZE_proxy_out1=1, PORTSIZE_proxy_out1=2;
  // IN
  input clock;
  input reset;
  input [(PORTSIZE_in1*BITSIZE_in1)+(-1):0] in1;
  input [(PORTSIZE_in2*BITSIZE_in2)+(-1):0] in2;
  input [(PORTSIZE_in3*BITSIZE_in3)+(-1):0] in3;
  input [PORTSIZE_in4-1:0] in4;
  input [PORTSIZE_sel_LOAD-1:0] sel_LOAD;
  input [PORTSIZE_sel_STORE-1:0] sel_STORE;
  input [PORTSIZE_S_oe_ram-1:0] S_oe_ram;
  input [PORTSIZE_S_we_ram-1:0] S_we_ram;
  input [(PORTSIZE_S_addr_ram*BITSIZE_S_addr_ram)+(-1):0] S_addr_ram;
  input [(PORTSIZE_S_Wdata_ram*BITSIZE_S_Wdata_ram)+(-1):0] S_Wdata_ram;
  input [(PORTSIZE_Sin_Rdata_ram*BITSIZE_Sin_Rdata_ram)+(-1):0] Sin_Rdata_ram;
  input [(PORTSIZE_S_data_ram_size*BITSIZE_S_data_ram_size)+(-1):0] S_data_ram_size;
  input [PORTSIZE_Sin_DataRdy-1:0] Sin_DataRdy;
  input [(PORTSIZE_proxy_in1*BITSIZE_proxy_in1)+(-1):0] proxy_in1;
  input [(PORTSIZE_proxy_in2*BITSIZE_proxy_in2)+(-1):0] proxy_in2;
  input [(PORTSIZE_proxy_in3*BITSIZE_proxy_in3)+(-1):0] proxy_in3;
  input [PORTSIZE_proxy_sel_LOAD-1:0] proxy_sel_LOAD;
  input [PORTSIZE_proxy_sel_STORE-1:0] proxy_sel_STORE;
  // OUT
  output [(PORTSIZE_out1*BITSIZE_out1)+(-1):0] out1;
  output [(PORTSIZE_Sout_Rdata_ram*BITSIZE_Sout_Rdata_ram)+(-1):0] Sout_Rdata_ram;
  output [PORTSIZE_Sout_DataRdy-1:0] Sout_DataRdy;
  output [(PORTSIZE_proxy_out1*BITSIZE_proxy_out1)+(-1):0] proxy_out1;
  ARRAY_1D_STD_BRAM_NN_SDS_BUS_BASE #(.BITSIZE_in1(BITSIZE_in1), .PORTSIZE_in1(PORTSIZE_in1), .BITSIZE_in2(BITSIZE_in2), .PORTSIZE_in2(PORTSIZE_in2), .BITSIZE_in3(BITSIZE_in3), .PORTSIZE_in3(PORTSIZE_in3), .BITSIZE_sel_LOAD(BITSIZE_sel_LOAD), .PORTSIZE_sel_LOAD(PORTSIZE_sel_LOAD), .BITSIZE_sel_STORE(BITSIZE_sel_STORE), .PORTSIZE_sel_STORE(PORTSIZE_sel_STORE), .BITSIZE_S_oe_ram(BITSIZE_S_oe_ram), .PORTSIZE_S_oe_ram(PORTSIZE_S_oe_ram), .BITSIZE_S_we_ram(BITSIZE_S_we_ram), .PORTSIZE_S_we_ram(PORTSIZE_S_we_ram), .BITSIZE_out1(BITSIZE_out1), .PORTSIZE_out1(PORTSIZE_out1), .BITSIZE_S_addr_ram(BITSIZE_S_addr_ram), .PORTSIZE_S_addr_ram(PORTSIZE_S_addr_ram), .BITSIZE_S_Wdata_ram(BITSIZE_S_Wdata_ram), .PORTSIZE_S_Wdata_ram(PORTSIZE_S_Wdata_ram), .BITSIZE_Sin_Rdata_ram(BITSIZE_Sin_Rdata_ram), .PORTSIZE_Sin_Rdata_ram(PORTSIZE_Sin_Rdata_ram), .BITSIZE_Sout_Rdata_ram(BITSIZE_Sout_Rdata_ram), .PORTSIZE_Sout_Rdata_ram(PORTSIZE_Sout_Rdata_ram), .BITSIZE_S_data_ram_size(BITSIZE_S_data_ram_size), .PORTSIZE_S_data_ram_size(PORTSIZE_S_data_ram_size), .BITSIZE_Sin_DataRdy(BITSIZE_Sin_DataRdy), .PORTSIZE_Sin_DataRdy(PORTSIZE_Sin_DataRdy), .BITSIZE_Sout_DataRdy(BITSIZE_Sout_DataRdy), .PORTSIZE_Sout_DataRdy(PORTSIZE_Sout_DataRdy), .MEMORY_INIT_file(MEMORY_INIT_file), .n_elements(n_elements), .data_size(data_size), .address_space_begin(address_space_begin), .address_space_rangesize(address_space_rangesize), .BUS_PIPELINED(BUS_PIPELINED), .BRAM_BITSIZE(BRAM_BITSIZE), .PRIVATE_MEMORY(PRIVATE_MEMORY), .USE_SPARSE_MEMORY(USE_SPARSE_MEMORY), .HIGH_LATENCY(0), .BITSIZE_proxy_in1(BITSIZE_proxy_in1), .PORTSIZE_proxy_in1(PORTSIZE_proxy_in1), .BITSIZE_proxy_in2(BITSIZE_proxy_in2), .PORTSIZE_proxy_in2(PORTSIZE_proxy_in2), .BITSIZE_proxy_in3(BITSIZE_proxy_in3), .PORTSIZE_proxy_in3(PORTSIZE_proxy_in3), .BITSIZE_proxy_sel_LOAD(BITSIZE_proxy_sel_LOAD), .PORTSIZE_proxy_sel_LOAD(PORTSIZE_proxy_sel_LOAD), .BITSIZE_proxy_sel_STORE(BITSIZE_proxy_sel_STORE), .PORTSIZE_proxy_sel_STORE(PORTSIZE_proxy_sel_STORE), .BITSIZE_proxy_out1(BITSIZE_proxy_out1), .PORTSIZE_proxy_out1(PORTSIZE_proxy_out1)) ARRAY_1D_STD_BRAM_NN_instance (.out1(out1), .Sout_Rdata_ram(Sout_Rdata_ram), .Sout_DataRdy(Sout_DataRdy), .proxy_out1(proxy_out1), .clock(clock), .reset(reset), .in1(in1), .in2(in2), .in3(in3), .sel_LOAD(sel_LOAD & in4), .sel_STORE(sel_STORE & in4), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size ), .Sin_DataRdy(Sin_DataRdy), .proxy_in1(proxy_in1), .proxy_in2(proxy_in2), .proxy_in3(proxy_in3), .proxy_sel_LOAD(proxy_sel_LOAD), .proxy_sel_STORE(proxy_sel_STORE));
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module addr_expr_FU(in1, out1);
  parameter BITSIZE_in1=1, BITSIZE_out1=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = in1;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module UUdata_converter_FU(in1, out1);
  parameter BITSIZE_in1=1, BITSIZE_out1=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  generate
  if (BITSIZE_out1 <= BITSIZE_in1)
  begin
    assign out1 = in1[BITSIZE_out1-1:0];
  end
  else
  begin
    assign out1 = {{(BITSIZE_out1-BITSIZE_in1){1'b0}},in1};
  end
  endgenerate
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module register_STD(clock, reset, in1, wenable, out1);
  parameter BITSIZE_in1=1, BITSIZE_out1=1;
  // IN
  input clock;
  input reset;
  input [BITSIZE_in1-1:0] in1;
  input wenable;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  reg [BITSIZE_out1-1:0] reg_out1 =0;
  assign out1 = reg_out1;
  always @(posedge clock)
    reg_out1 <= in1;

endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module read_cond_FU(in1, out1);
  parameter BITSIZE_in1=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  // OUT
  output out1;
  assign out1 = in1 != {BITSIZE_in1{1'b0}};
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module UIdata_converter_FU(in1, out1);
  parameter BITSIZE_in1=1, BITSIZE_out1=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  // OUT
  output signed [BITSIZE_out1-1:0] out1;
  generate
  if (BITSIZE_out1 <= BITSIZE_in1)
  begin
    assign out1 = in1[BITSIZE_out1-1:0];
  end
  else
  begin
    assign out1 = {{(BITSIZE_out1-BITSIZE_in1){1'b0}},in1};
  end
  endgenerate
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module IUdata_converter_FU(in1, out1);
  parameter BITSIZE_in1=1, BITSIZE_out1=1;
  // IN
  input signed [BITSIZE_in1-1:0] in1;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  generate
  if (BITSIZE_out1 <= BITSIZE_in1)
  begin
    assign out1 = in1[BITSIZE_out1-1:0];
  end
  else
  begin
    assign out1 = {{(BITSIZE_out1-BITSIZE_in1){in1[BITSIZE_in1-1]}},in1};
  end
  endgenerate
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module multi_read_cond_FU(in1, out1);
  parameter BITSIZE_in1=1, PORTSIZE_in1=2, BITSIZE_out1=1;
  // IN
  input [(PORTSIZE_in1*BITSIZE_in1)+(-1):0] in1;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = in1;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module IIdata_converter_FU(in1, out1);
  parameter BITSIZE_in1=1, BITSIZE_out1=1;
  // IN
  input signed [BITSIZE_in1-1:0] in1;
  // OUT
  output signed [BITSIZE_out1-1:0] out1;
  generate
  if (BITSIZE_out1 <= BITSIZE_in1)
  begin
    assign out1 = in1[BITSIZE_out1-1:0];
  end
  else
  begin
    assign out1 = {{(BITSIZE_out1-BITSIZE_in1){in1[BITSIZE_in1-1]}},in1};
  end
  endgenerate
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module BMEMORY_CTRLN(clock, in1, in2, in3, in4, sel_LOAD, sel_STORE, out1, Min_oe_ram, Mout_oe_ram, Min_we_ram, Mout_we_ram, Min_addr_ram, Mout_addr_ram, M_Rdata_ram, Min_Wdata_ram, Mout_Wdata_ram, Min_data_ram_size, Mout_data_ram_size, M_DataRdy);
  parameter BITSIZE_in1=1, PORTSIZE_in1=2, BITSIZE_in2=1, PORTSIZE_in2=2, BITSIZE_in3=1, PORTSIZE_in3=2, BITSIZE_in4=1, PORTSIZE_in4=2, BITSIZE_sel_LOAD=1, PORTSIZE_sel_LOAD=2, BITSIZE_sel_STORE=1, PORTSIZE_sel_STORE=2, BITSIZE_out1=1, PORTSIZE_out1=2, BITSIZE_Min_oe_ram=1, PORTSIZE_Min_oe_ram=2, BITSIZE_Min_we_ram=1, PORTSIZE_Min_we_ram=2, BITSIZE_Mout_oe_ram=1, PORTSIZE_Mout_oe_ram=2, BITSIZE_Mout_we_ram=1, PORTSIZE_Mout_we_ram=2, BITSIZE_M_DataRdy=1, PORTSIZE_M_DataRdy=2, BITSIZE_Min_addr_ram=1, PORTSIZE_Min_addr_ram=2, BITSIZE_Mout_addr_ram=1, PORTSIZE_Mout_addr_ram=2, BITSIZE_M_Rdata_ram=8, PORTSIZE_M_Rdata_ram=2, BITSIZE_Min_Wdata_ram=8, PORTSIZE_Min_Wdata_ram=2, BITSIZE_Mout_Wdata_ram=8, PORTSIZE_Mout_Wdata_ram=2, BITSIZE_Min_data_ram_size=1, PORTSIZE_Min_data_ram_size=2, BITSIZE_Mout_data_ram_size=1, PORTSIZE_Mout_data_ram_size=2;
  // IN
  input clock;
  input [(PORTSIZE_in1*BITSIZE_in1)+(-1):0] in1;
  input [(PORTSIZE_in2*BITSIZE_in2)+(-1):0] in2;
  input [(PORTSIZE_in3*BITSIZE_in3)+(-1):0] in3;
  input [PORTSIZE_in4-1:0] in4;
  input [PORTSIZE_sel_LOAD-1:0] sel_LOAD;
  input [PORTSIZE_sel_STORE-1:0] sel_STORE;
  input [PORTSIZE_Min_oe_ram-1:0] Min_oe_ram;
  input [PORTSIZE_Min_we_ram-1:0] Min_we_ram;
  input [(PORTSIZE_Min_addr_ram*BITSIZE_Min_addr_ram)+(-1):0] Min_addr_ram;
  input [(PORTSIZE_M_Rdata_ram*BITSIZE_M_Rdata_ram)+(-1):0] M_Rdata_ram;
  input [(PORTSIZE_Min_Wdata_ram*BITSIZE_Min_Wdata_ram)+(-1):0] Min_Wdata_ram;
  input [(PORTSIZE_Min_data_ram_size*BITSIZE_Min_data_ram_size)+(-1):0] Min_data_ram_size;
  input [PORTSIZE_M_DataRdy-1:0] M_DataRdy;
  // OUT
  output [(PORTSIZE_out1*BITSIZE_out1)+(-1):0] out1;
  output [PORTSIZE_Mout_oe_ram-1:0] Mout_oe_ram;
  output [PORTSIZE_Mout_we_ram-1:0] Mout_we_ram;
  output [(PORTSIZE_Mout_addr_ram*BITSIZE_Mout_addr_ram)+(-1):0] Mout_addr_ram;
  output [(PORTSIZE_Mout_Wdata_ram*BITSIZE_Mout_Wdata_ram)+(-1):0] Mout_Wdata_ram;
  output [(PORTSIZE_Mout_data_ram_size*BITSIZE_Mout_data_ram_size)+(-1):0] Mout_data_ram_size;
  
  parameter max_n_writes = PORTSIZE_sel_STORE > PORTSIZE_Mout_we_ram ? PORTSIZE_sel_STORE : PORTSIZE_Mout_we_ram;
  parameter max_n_reads = PORTSIZE_sel_LOAD > PORTSIZE_Mout_oe_ram ? PORTSIZE_sel_STORE : PORTSIZE_Mout_oe_ram;
  parameter max_n_rw = max_n_writes > max_n_reads ? max_n_writes : max_n_reads;
  wire  [(PORTSIZE_in2*BITSIZE_in2)-1:0] tmp_addr;
  wire [PORTSIZE_sel_LOAD-1:0] int_sel_LOAD;
  wire [PORTSIZE_sel_STORE-1:0] int_sel_STORE;
  assign int_sel_LOAD = sel_LOAD & in4;
  assign int_sel_STORE = sel_STORE & in4;
  assign tmp_addr = in2;
  generate
  genvar i;
    for (i=0; i<max_n_rw; i=i+1)
    begin : L0
      assign Mout_addr_ram[(i+1)*BITSIZE_Mout_addr_ram-1:i*BITSIZE_Mout_addr_ram] = ((i < PORTSIZE_sel_LOAD && int_sel_LOAD[i]) || (i < PORTSIZE_sel_STORE && int_sel_STORE[i])) ? (tmp_addr[(i+1)*BITSIZE_in2-1:i*BITSIZE_in2]) : Min_addr_ram[(i+1)*BITSIZE_Min_addr_ram-1:i*BITSIZE_Min_addr_ram];
    end
    endgenerate
  assign Mout_oe_ram = int_sel_LOAD | Min_oe_ram;
  assign Mout_we_ram = int_sel_STORE | Min_we_ram;
  generate
    for (i=0; i<max_n_reads; i=i+1)
    begin : L1
      assign out1[(i+1)*BITSIZE_out1-1:i*BITSIZE_out1] = M_Rdata_ram[i*BITSIZE_M_Rdata_ram+BITSIZE_out1-1:i*BITSIZE_M_Rdata_ram];
  end
  endgenerate
  generate
    for (i=0; i<max_n_rw; i=i+1)
    begin : L2
      assign Mout_Wdata_ram[(i+1)*BITSIZE_Mout_Wdata_ram-1:i*BITSIZE_Mout_Wdata_ram] = int_sel_STORE[i] ? in1[(i+1)*BITSIZE_in1-1:i*BITSIZE_in1] : Min_Wdata_ram[(i+1)*BITSIZE_Min_Wdata_ram-1:i*BITSIZE_Min_Wdata_ram];
  end
  endgenerate
  generate
    for (i=0; i<max_n_rw; i=i+1)
    begin : L3
      assign Mout_data_ram_size[(i+1)*BITSIZE_Mout_data_ram_size-1:i*BITSIZE_Mout_data_ram_size] = ((i < PORTSIZE_sel_LOAD && int_sel_LOAD[i]) || (i < PORTSIZE_sel_STORE && int_sel_STORE[i])) ? (in3[(i+1)*BITSIZE_in3-1:i*BITSIZE_in3]) : Min_data_ram_size[(i+1)*BITSIZE_Min_data_ram_size-1:i*BITSIZE_Min_data_ram_size];
    end
    endgenerate

endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2016-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module bit_ior_concat_expr_FU(in1, in2, in3, out1);
  parameter BITSIZE_in1=1, BITSIZE_in2=1, BITSIZE_in3=1, BITSIZE_out1=1, OFFSET_PARAMETER=1;
  // IN
  input signed [BITSIZE_in1-1:0] in1;
  input signed [BITSIZE_in2-1:0] in2;
  input signed [BITSIZE_in3-1:0] in3;
  // OUT
  output signed [BITSIZE_out1-1:0] out1;
  
  parameter nbit_out = BITSIZE_out1 > OFFSET_PARAMETER ? BITSIZE_out1 : 1+OFFSET_PARAMETER;
  wire signed [nbit_out-1:0] tmp_in1;
  wire signed [OFFSET_PARAMETER-1:0] tmp_in2;
  generate
    if(BITSIZE_in1 >= nbit_out)
      assign tmp_in1=in1[nbit_out-1:0];
    else
      assign tmp_in1={{(nbit_out-BITSIZE_in1){in1[BITSIZE_in1-1]}},in1};
  endgenerate
  generate
    if(BITSIZE_in2 >= OFFSET_PARAMETER)
      assign tmp_in2=in2[OFFSET_PARAMETER-1:0];
    else
      assign tmp_in2={{(OFFSET_PARAMETER-BITSIZE_in2){in2[BITSIZE_in2-1]}},in2};
  endgenerate
  assign out1 = {tmp_in1[nbit_out-1:OFFSET_PARAMETER] , tmp_in2};
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module eq_expr_FU(in1, in2, out1);
  parameter BITSIZE_in1=1, BITSIZE_in2=1, BITSIZE_out1=1;
  // IN
  input signed [BITSIZE_in1-1:0] in1;
  input signed [BITSIZE_in2-1:0] in2;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = in1 == in2;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module lshift_expr_FU(in1, in2, out1);
  parameter BITSIZE_in1=1, BITSIZE_in2=1, BITSIZE_out1=1, PRECISION=1;
  // IN
  input signed [BITSIZE_in1-1:0] in1;
  input [BITSIZE_in2-1:0] in2;
  // OUT
  output signed [BITSIZE_out1-1:0] out1;
  `ifndef _SIM_HAVE_CLOG2
    function integer log2;
       input integer value;
       integer temp_value;
      begin
        temp_value = value-1;
        for (log2=0; temp_value>0; log2=log2+1)
          temp_value = temp_value>>1;
      end
    endfunction
  `endif
  `ifdef _SIM_HAVE_CLOG2
    parameter arg2_bitsize = $clog2(PRECISION);
  `else
    parameter arg2_bitsize = log2(PRECISION);
  `endif
  generate
    if(BITSIZE_in2 > arg2_bitsize)
      assign out1 = in1 <<< in2[arg2_bitsize-1:0];
    else
      assign out1 = in1 <<< in2;
  endgenerate
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module lt_expr_FU(in1, in2, out1);
  parameter BITSIZE_in1=1, BITSIZE_in2=1, BITSIZE_out1=1;
  // IN
  input signed [BITSIZE_in1-1:0] in1;
  input signed [BITSIZE_in2-1:0] in2;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = in1 < in2;

endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module ne_expr_FU(in1, in2, out1);
  parameter BITSIZE_in1=1, BITSIZE_in2=1, BITSIZE_out1=1;
  // IN
  input signed [BITSIZE_in1-1:0] in1;
  input signed [BITSIZE_in2-1:0] in2;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = in1 != in2;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module plus_expr_FU(in1, in2, out1);
  parameter BITSIZE_in1=1, BITSIZE_in2=1, BITSIZE_out1=1;
  // IN
  input signed [BITSIZE_in1-1:0] in1;
  input signed [BITSIZE_in2-1:0] in2;
  // OUT
  output signed [BITSIZE_out1-1:0] out1;
  assign out1 = in1 + in2;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module rshift_expr_FU(in1, in2, out1);
  parameter BITSIZE_in1=1, BITSIZE_in2=1, BITSIZE_out1=1, PRECISION=1;
  // IN
  input signed [BITSIZE_in1-1:0] in1;
  input [BITSIZE_in2-1:0] in2;
  // OUT
  output signed [BITSIZE_out1-1:0] out1;
  `ifndef _SIM_HAVE_CLOG2
    function integer log2;
       input integer value;
       integer temp_value;
      begin
        temp_value = value-1;
        for (log2=0; temp_value>0; log2=log2+1)
          temp_value = temp_value>>1;
      end
    endfunction
  `endif
  `ifdef _SIM_HAVE_CLOG2
    parameter arg2_bitsize = $clog2(PRECISION);
  `else
    parameter arg2_bitsize = log2(PRECISION);
  `endif
  generate
    if(BITSIZE_in2 > arg2_bitsize)
      assign out1 = in1 >>> (in2[arg2_bitsize-1:0]);
    else
      assign out1 = in1 >>> in2;
  endgenerate
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module truth_and_expr_FU(in1, in2, out1);
  parameter BITSIZE_in1=1, BITSIZE_in2=1, BITSIZE_out1=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  input [BITSIZE_in2-1:0] in2;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = in1 && in2;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module truth_not_expr_FU(in1, out1);
  parameter BITSIZE_in1=1, BITSIZE_out1=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = !in1;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module ui_bit_and_expr_FU(in1, in2, out1);
  parameter BITSIZE_in1=1, BITSIZE_in2=1, BITSIZE_out1=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  input [BITSIZE_in2-1:0] in2;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = in1 & in2;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2016-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module ui_bit_ior_concat_expr_FU(in1, in2, in3, out1);
  parameter BITSIZE_in1=1, BITSIZE_in2=1, BITSIZE_in3=1, BITSIZE_out1=1, OFFSET_PARAMETER=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  input [BITSIZE_in2-1:0] in2;
  input [BITSIZE_in3-1:0] in3;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  parameter nbit_out = BITSIZE_out1 > OFFSET_PARAMETER ? BITSIZE_out1 : 1+OFFSET_PARAMETER;
  wire [nbit_out-1:0] tmp_in1;
  wire [OFFSET_PARAMETER-1:0] tmp_in2;
  generate
    if(BITSIZE_in1 >= nbit_out)
      assign tmp_in1=in1[nbit_out-1:0];
    else
      assign tmp_in1={{(nbit_out-BITSIZE_in1){1'b0}},in1};
  endgenerate
  generate
    if(BITSIZE_in2 >= OFFSET_PARAMETER)
      assign tmp_in2=in2[OFFSET_PARAMETER-1:0];
    else
      assign tmp_in2={{(OFFSET_PARAMETER-BITSIZE_in2){1'b0}},in2};
  endgenerate
  assign out1 = {tmp_in1[nbit_out-1:OFFSET_PARAMETER] , tmp_in2};
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module ui_cond_expr_FU(in1, in2, in3, out1);
  parameter BITSIZE_in1=1, BITSIZE_in2=1, BITSIZE_in3=1, BITSIZE_out1=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  input [BITSIZE_in2-1:0] in2;
  input [BITSIZE_in3-1:0] in3;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = in1 != 0 ? in2 : in3;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module ui_eq_expr_FU(in1, in2, out1);
  parameter BITSIZE_in1=1, BITSIZE_in2=1, BITSIZE_out1=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  input [BITSIZE_in2-1:0] in2;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = in1 == in2;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module ui_lshift_expr_FU(in1, in2, out1);
  parameter BITSIZE_in1=1, BITSIZE_in2=1, BITSIZE_out1=1, PRECISION=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  input [BITSIZE_in2-1:0] in2;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  `ifndef _SIM_HAVE_CLOG2
    function integer log2;
       input integer value;
       integer temp_value;
      begin
        temp_value = value-1;
        for (log2=0; temp_value>0; log2=log2+1)
          temp_value = temp_value>>1;
      end
    endfunction
  `endif
  `ifdef _SIM_HAVE_CLOG2
    parameter arg2_bitsize = $clog2(PRECISION);
  `else
    parameter arg2_bitsize = log2(PRECISION);
  `endif
  generate
    if(BITSIZE_in2 > arg2_bitsize)
      assign out1 = in1 << in2[arg2_bitsize-1:0];
    else
      assign out1 = in1 << in2;
  endgenerate
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module ui_ne_expr_FU(in1, in2, out1);
  parameter BITSIZE_in1=1, BITSIZE_in2=1, BITSIZE_out1=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  input [BITSIZE_in2-1:0] in2;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = in1 != in2;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module ui_negate_expr_FU(in1, out1);
  parameter BITSIZE_in1=1, BITSIZE_out1=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = -in1;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module ui_plus_expr_FU(in1, in2, out1);
  parameter BITSIZE_in1=1, BITSIZE_in2=1, BITSIZE_out1=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  input [BITSIZE_in2-1:0] in2;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = in1 + in2;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module ui_pointer_plus_expr_FU(in1, in2, out1);
  parameter BITSIZE_in1=1, BITSIZE_in2=1, BITSIZE_out1=1, LSB_PARAMETER=-1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  input [BITSIZE_in2-1:0] in2;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  wire [BITSIZE_out1-1:0] in1_tmp;
  wire [BITSIZE_out1-1:0] in2_tmp;
  assign in1_tmp = in1;
  assign in2_tmp = in2;generate if (BITSIZE_out1 > LSB_PARAMETER) assign out1[BITSIZE_out1-1:LSB_PARAMETER] = (in1_tmp[BITSIZE_out1-1:LSB_PARAMETER] + in2_tmp[BITSIZE_out1-1:LSB_PARAMETER]); else assign out1 = 0; endgenerate
  generate if (LSB_PARAMETER != 0 && BITSIZE_out1 > LSB_PARAMETER) assign out1[LSB_PARAMETER-1:0] = 0; endgenerate
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module ui_rshift_expr_FU(in1, in2, out1);
  parameter BITSIZE_in1=1, BITSIZE_in2=1, BITSIZE_out1=1, PRECISION=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  input [BITSIZE_in2-1:0] in2;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  `ifndef _SIM_HAVE_CLOG2
    function integer log2;
       input integer value;
       integer temp_value;
      begin
        temp_value = value-1;
        for (log2=0; temp_value>0; log2=log2+1)
          temp_value = temp_value>>1;
      end
    endfunction
  `endif
  `ifdef _SIM_HAVE_CLOG2
    parameter arg2_bitsize = $clog2(PRECISION);
  `else
    parameter arg2_bitsize = log2(PRECISION);
  `endif
  generate
    if(BITSIZE_in2 > arg2_bitsize)
      assign out1 = in1 >> (in2[arg2_bitsize-1:0]);
    else
      assign out1 = in1 >> in2;
  endgenerate

endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2013-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module bus_merger(in1, out1);
  parameter BITSIZE_in1=1, PORTSIZE_in1=2, BITSIZE_out1=1;
  // IN
  input [(PORTSIZE_in1*BITSIZE_in1)+(-1):0] in1;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  
  function [BITSIZE_out1-1:0] merge;
    input [BITSIZE_in1*PORTSIZE_in1-1:0] m;
    reg [BITSIZE_out1-1:0] res;
    integer i1;
  begin
    res={BITSIZE_in1{1'b0}};
    for(i1 = 0; i1 < PORTSIZE_in1; i1 = i1 + 1)
    begin
      res = res | m[i1*BITSIZE_in1 +:BITSIZE_in1];
    end
    merge = res;
  end
  endfunction
  
  assign out1 = merge(in1);
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module join_signal(in1, out1);
  parameter BITSIZE_in1=1, PORTSIZE_in1=2, BITSIZE_out1=1;
  // IN
  input [(PORTSIZE_in1*BITSIZE_in1)+(-1):0] in1;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  
  generate
  genvar i1;
  for (i1=0; i1<PORTSIZE_in1; i1=i1+1)
    begin : L1
      assign out1[(i1+1)*(BITSIZE_out1/PORTSIZE_in1)-1:i1*(BITSIZE_out1/PORTSIZE_in1)] = in1[(i1+1)*BITSIZE_in1-1:i1*BITSIZE_in1];
    end
  endgenerate
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module split_signal(in1, out1);
  parameter BITSIZE_in1=1, BITSIZE_out1=1, PORTSIZE_out1=2;
  // IN
  input [BITSIZE_in1-1:0] in1;
  // OUT
  output [(PORTSIZE_out1*BITSIZE_out1)+(-1):0] out1;
  assign out1 = in1;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module ASSIGN_SIGNED_FU(in1, out1);
  parameter BITSIZE_in1=1, BITSIZE_out1=1;
  // IN
  input signed [BITSIZE_in1-1:0] in1;
  // OUT
  output signed [BITSIZE_out1-1:0] out1;
  assign out1 = in1;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module ASSIGN_UNSIGNED_FU(in1, out1);
  parameter BITSIZE_in1=1, BITSIZE_out1=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = in1;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>, Christian Pilato <christian.pilato@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module MUX_GATE(sel, in1, in2, out1);
  parameter BITSIZE_in1=1, BITSIZE_in2=1, BITSIZE_out1=1;
  // IN
  input sel;
  input [BITSIZE_in1-1:0] in1;
  input [BITSIZE_in2-1:0] in2;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = sel ? in1 : in2;
endmodule

// Datapath RTL description for dijkstraF
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module datapath_dijkstraF(clock, reset, in_port_a, S_oe_ram, S_we_ram, S_addr_ram, S_Wdata_ram, S_data_ram_size, M_Rdata_ram, M_DataRdy, Sin_Rdata_ram, Sin_DataRdy, Sout_Rdata_ram, Sout_DataRdy, Min_oe_ram, Min_we_ram, Min_addr_ram, Min_Wdata_ram, Min_data_ram_size, Mout_oe_ram, Mout_we_ram, Mout_addr_ram, Mout_Wdata_ram, Mout_data_ram_size, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_STORE, fuselector_BMEMORY_CTRLN_85_i0_LOAD, fuselector_BMEMORY_CTRLN_85_i0_STORE, selector_MUX_0_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_0_0_0, selector_MUX_100_reg_0_0_0_0, selector_MUX_103_reg_11_0_0_0, selector_MUX_106_reg_14_0_0_0, selector_MUX_108_reg_16_0_0_0, selector_MUX_109_reg_17_0_0_0, selector_MUX_115_reg_22_0_0_0, selector_MUX_116_reg_23_0_0_0, selector_MUX_117_reg_24_0_0_0, selector_MUX_118_reg_25_0_0_0, selector_MUX_120_reg_27_0_0_0, selector_MUX_122_reg_29_0_0_0, selector_MUX_124_reg_30_0_0_0, selector_MUX_128_reg_34_0_0_0, selector_MUX_132_reg_38_0_0_0, selector_MUX_141_reg_6_0_0_0, selector_MUX_141_reg_6_0_0_1, selector_MUX_144_reg_9_0_0_0, selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0, selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_1_0_0, selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_1_0_1, selector_MUX_8_BMEMORY_CTRLN_85_i0_0_0_0, selector_MUX_8_BMEMORY_CTRLN_85_i0_0_0_1, selector_MUX_8_BMEMORY_CTRLN_85_i0_0_1_0, selector_MUX_9_BMEMORY_CTRLN_85_i0_1_0_0, selector_MUX_9_BMEMORY_CTRLN_85_i0_1_0_1, selector_MUX_9_BMEMORY_CTRLN_85_i0_1_0_2, selector_MUX_9_BMEMORY_CTRLN_85_i0_1_0_3, selector_MUX_9_BMEMORY_CTRLN_85_i0_1_1_0, selector_MUX_9_BMEMORY_CTRLN_85_i0_1_1_1, selector_MUX_9_BMEMORY_CTRLN_85_i0_1_2_0, wrenable_reg_0, wrenable_reg_1, wrenable_reg_10, wrenable_reg_11, wrenable_reg_12, wrenable_reg_13, wrenable_reg_14, wrenable_reg_15, wrenable_reg_16, wrenable_reg_17, wrenable_reg_18, wrenable_reg_19, wrenable_reg_2, wrenable_reg_20, wrenable_reg_21, wrenable_reg_22, wrenable_reg_23, wrenable_reg_24, wrenable_reg_25, wrenable_reg_26, wrenable_reg_27, wrenable_reg_28, wrenable_reg_29, wrenable_reg_3, wrenable_reg_30, wrenable_reg_31, wrenable_reg_32, wrenable_reg_33, wrenable_reg_34, wrenable_reg_35, wrenable_reg_36, wrenable_reg_37, wrenable_reg_38, wrenable_reg_39, wrenable_reg_4, wrenable_reg_40, wrenable_reg_41, wrenable_reg_42, wrenable_reg_43, wrenable_reg_44, wrenable_reg_5, wrenable_reg_6, wrenable_reg_7, wrenable_reg_8, wrenable_reg_9, OUT_CONDITION_dijkstraF_28863_29110, OUT_CONDITION_dijkstraF_28863_29159, OUT_CONDITION_dijkstraF_28863_29238, OUT_CONDITION_dijkstraF_28863_29252, OUT_CONDITION_dijkstraF_28863_29278, OUT_CONDITION_dijkstraF_28863_29298, OUT_CONDITION_dijkstraF_28863_29381, OUT_CONDITION_dijkstraF_28863_29398, OUT_CONDITION_dijkstraF_28863_29409, OUT_CONDITION_dijkstraF_28863_29442, OUT_CONDITION_dijkstraF_28863_29445, OUT_CONDITION_dijkstraF_28863_29450, OUT_CONDITION_dijkstraF_28863_29455, OUT_MULTIIF_dijkstraF_28863_29821);
  parameter MEM_var_28859_28863=1024;
  // IN
  input clock;
  input reset;
  input [31:0] in_port_a;
  input [1:0] S_oe_ram;
  input [1:0] S_we_ram;
  input [21:0] S_addr_ram;
  input [15:0] S_Wdata_ram;
  input [7:0] S_data_ram_size;
  input [15:0] M_Rdata_ram;
  input [1:0] M_DataRdy;
  input [15:0] Sin_Rdata_ram;
  input [1:0] Sin_DataRdy;
  input [1:0] Min_oe_ram;
  input [1:0] Min_we_ram;
  input [21:0] Min_addr_ram;
  input [15:0] Min_Wdata_ram;
  input [7:0] Min_data_ram_size;
  input fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD;
  input fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE;
  input fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_LOAD;
  input fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_STORE;
  input fuselector_BMEMORY_CTRLN_85_i0_LOAD;
  input fuselector_BMEMORY_CTRLN_85_i0_STORE;
  input selector_MUX_0_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_0_0_0;
  input selector_MUX_100_reg_0_0_0_0;
  input selector_MUX_103_reg_11_0_0_0;
  input selector_MUX_106_reg_14_0_0_0;
  input selector_MUX_108_reg_16_0_0_0;
  input selector_MUX_109_reg_17_0_0_0;
  input selector_MUX_115_reg_22_0_0_0;
  input selector_MUX_116_reg_23_0_0_0;
  input selector_MUX_117_reg_24_0_0_0;
  input selector_MUX_118_reg_25_0_0_0;
  input selector_MUX_120_reg_27_0_0_0;
  input selector_MUX_122_reg_29_0_0_0;
  input selector_MUX_124_reg_30_0_0_0;
  input selector_MUX_128_reg_34_0_0_0;
  input selector_MUX_132_reg_38_0_0_0;
  input selector_MUX_141_reg_6_0_0_0;
  input selector_MUX_141_reg_6_0_0_1;
  input selector_MUX_144_reg_9_0_0_0;
  input selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0;
  input selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_1_0_0;
  input selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_1_0_1;
  input selector_MUX_8_BMEMORY_CTRLN_85_i0_0_0_0;
  input selector_MUX_8_BMEMORY_CTRLN_85_i0_0_0_1;
  input selector_MUX_8_BMEMORY_CTRLN_85_i0_0_1_0;
  input selector_MUX_9_BMEMORY_CTRLN_85_i0_1_0_0;
  input selector_MUX_9_BMEMORY_CTRLN_85_i0_1_0_1;
  input selector_MUX_9_BMEMORY_CTRLN_85_i0_1_0_2;
  input selector_MUX_9_BMEMORY_CTRLN_85_i0_1_0_3;
  input selector_MUX_9_BMEMORY_CTRLN_85_i0_1_1_0;
  input selector_MUX_9_BMEMORY_CTRLN_85_i0_1_1_1;
  input selector_MUX_9_BMEMORY_CTRLN_85_i0_1_2_0;
  input wrenable_reg_0;
  input wrenable_reg_1;
  input wrenable_reg_10;
  input wrenable_reg_11;
  input wrenable_reg_12;
  input wrenable_reg_13;
  input wrenable_reg_14;
  input wrenable_reg_15;
  input wrenable_reg_16;
  input wrenable_reg_17;
  input wrenable_reg_18;
  input wrenable_reg_19;
  input wrenable_reg_2;
  input wrenable_reg_20;
  input wrenable_reg_21;
  input wrenable_reg_22;
  input wrenable_reg_23;
  input wrenable_reg_24;
  input wrenable_reg_25;
  input wrenable_reg_26;
  input wrenable_reg_27;
  input wrenable_reg_28;
  input wrenable_reg_29;
  input wrenable_reg_3;
  input wrenable_reg_30;
  input wrenable_reg_31;
  input wrenable_reg_32;
  input wrenable_reg_33;
  input wrenable_reg_34;
  input wrenable_reg_35;
  input wrenable_reg_36;
  input wrenable_reg_37;
  input wrenable_reg_38;
  input wrenable_reg_39;
  input wrenable_reg_4;
  input wrenable_reg_40;
  input wrenable_reg_41;
  input wrenable_reg_42;
  input wrenable_reg_43;
  input wrenable_reg_44;
  input wrenable_reg_5;
  input wrenable_reg_6;
  input wrenable_reg_7;
  input wrenable_reg_8;
  input wrenable_reg_9;
  // OUT
  output [15:0] Sout_Rdata_ram;
  output [1:0] Sout_DataRdy;
  output [1:0] Mout_oe_ram;
  output [1:0] Mout_we_ram;
  output [21:0] Mout_addr_ram;
  output [15:0] Mout_Wdata_ram;
  output [7:0] Mout_data_ram_size;
  output OUT_CONDITION_dijkstraF_28863_29110;
  output OUT_CONDITION_dijkstraF_28863_29159;
  output OUT_CONDITION_dijkstraF_28863_29238;
  output OUT_CONDITION_dijkstraF_28863_29252;
  output OUT_CONDITION_dijkstraF_28863_29278;
  output OUT_CONDITION_dijkstraF_28863_29298;
  output OUT_CONDITION_dijkstraF_28863_29381;
  output OUT_CONDITION_dijkstraF_28863_29398;
  output OUT_CONDITION_dijkstraF_28863_29409;
  output OUT_CONDITION_dijkstraF_28863_29442;
  output OUT_CONDITION_dijkstraF_28863_29445;
  output OUT_CONDITION_dijkstraF_28863_29450;
  output OUT_CONDITION_dijkstraF_28863_29455;
  output [1:0] OUT_MULTIIF_dijkstraF_28863_29821;
  // Component and signal declarations
  wire [7:0] null_out_signal_BMEMORY_CTRLN_85_i0_out1_1;
  wire [7:0] null_out_signal_array_28859_0_proxy_out1_0;
  wire [7:0] null_out_signal_array_28859_0_proxy_out1_1;
  wire [7:0] out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_array_28859_0;
  wire [7:0] out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_array_28859_0;
  wire [7:0] out_BMEMORY_CTRLN_85_i0_BMEMORY_CTRLN_85_i0;
  wire signed [7:0] out_IIdata_converter_FU_69_i0_fu_dijkstraF_28863_29432;
  wire [7:0] out_IUdata_converter_FU_14_i0_fu_dijkstraF_28863_29132;
  wire [7:0] out_IUdata_converter_FU_21_i0_fu_dijkstraF_28863_29199;
  wire [7:0] out_IUdata_converter_FU_55_i0_fu_dijkstraF_28863_29604;
  wire [7:0] out_IUdata_converter_FU_70_i0_fu_dijkstraF_28863_29414;
  wire [4:0] out_IUdata_converter_FU_76_i0_fu_dijkstraF_28863_29646;
  wire [7:0] out_MUX_0_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_0_0_0;
  wire [2:0] out_MUX_100_reg_0_0_0_0;
  wire [31:0] out_MUX_103_reg_11_0_0_0;
  wire [31:0] out_MUX_106_reg_14_0_0_0;
  wire [4:0] out_MUX_108_reg_16_0_0_0;
  wire [31:0] out_MUX_109_reg_17_0_0_0;
  wire [7:0] out_MUX_115_reg_22_0_0_0;
  wire [7:0] out_MUX_116_reg_23_0_0_0;
  wire [31:0] out_MUX_117_reg_24_0_0_0;
  wire [7:0] out_MUX_118_reg_25_0_0_0;
  wire [4:0] out_MUX_120_reg_27_0_0_0;
  wire [4:0] out_MUX_122_reg_29_0_0_0;
  wire [31:0] out_MUX_124_reg_30_0_0_0;
  wire [7:0] out_MUX_128_reg_34_0_0_0;
  wire [4:0] out_MUX_132_reg_38_0_0_0;
  wire [7:0] out_MUX_141_reg_6_0_0_0;
  wire [7:0] out_MUX_141_reg_6_0_0_1;
  wire [4:0] out_MUX_144_reg_9_0_0_0;
  wire [10:0] out_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0;
  wire [10:0] out_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_1_0_0;
  wire [10:0] out_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_1_0_1;
  wire [7:0] out_MUX_8_BMEMORY_CTRLN_85_i0_0_0_0;
  wire [7:0] out_MUX_8_BMEMORY_CTRLN_85_i0_0_0_1;
  wire [7:0] out_MUX_8_BMEMORY_CTRLN_85_i0_0_1_0;
  wire [10:0] out_MUX_9_BMEMORY_CTRLN_85_i0_1_0_0;
  wire [10:0] out_MUX_9_BMEMORY_CTRLN_85_i0_1_0_1;
  wire [10:0] out_MUX_9_BMEMORY_CTRLN_85_i0_1_0_2;
  wire [10:0] out_MUX_9_BMEMORY_CTRLN_85_i0_1_0_3;
  wire [10:0] out_MUX_9_BMEMORY_CTRLN_85_i0_1_1_0;
  wire [10:0] out_MUX_9_BMEMORY_CTRLN_85_i0_1_1_1;
  wire [10:0] out_MUX_9_BMEMORY_CTRLN_85_i0_1_2_0;
  wire signed [7:0] out_UIdata_converter_FU_13_i0_fu_dijkstraF_28863_29130;
  wire signed [7:0] out_UIdata_converter_FU_22_i0_fu_dijkstraF_28863_29188;
  wire signed [8:0] out_UIdata_converter_FU_53_i0_fu_dijkstraF_28863_29379;
  wire signed [8:0] out_UIdata_converter_FU_66_i0_fu_dijkstraF_28863_29433;
  wire signed [5:0] out_UIdata_converter_FU_74_i0_fu_dijkstraF_28863_29346;
  wire [4:0] out_UUdata_converter_FU_23_i0_fu_dijkstraF_28863_29237;
  wire [31:0] out_UUdata_converter_FU_24_i0_fu_dijkstraF_28863_29210;
  wire [10:0] out_UUdata_converter_FU_3_i0_fu_dijkstraF_28863_29133;
  wire [31:0] out_UUdata_converter_FU_40_i0_fu_dijkstraF_28863_29177;
  wire [31:0] out_UUdata_converter_FU_42_i0_fu_dijkstraF_28863_29275;
  wire [7:0] out_UUdata_converter_FU_52_i0_fu_dijkstraF_28863_29376;
  wire [13:0] out_UUdata_converter_FU_54_i0_fu_dijkstraF_28863_29601;
  wire [31:0] out_UUdata_converter_FU_5_i0_fu_dijkstraF_28863_29260;
  wire [4:0] out_UUdata_converter_FU_64_i0_fu_dijkstraF_28863_29309;
  wire [31:0] out_UUdata_converter_FU_65_i0_fu_dijkstraF_28863_29407;
  wire [31:0] out_UUdata_converter_FU_6_i0_fu_dijkstraF_28863_29261;
  wire [4:0] out_UUdata_converter_FU_73_i0_fu_dijkstraF_28863_29341;
  wire [11:0] out_UUdata_converter_FU_75_i0_fu_dijkstraF_28863_29643;
  wire [4:0] out_UUdata_converter_FU_80_i0_fu_dijkstraF_28863_29444;
  wire [31:0] out_UUdata_converter_FU_8_i0_fu_dijkstraF_28863_29552;
  wire [10:0] out_UUdata_converter_FU_9_i0_fu_dijkstraF_28863_29572;
  wire [31:0] out_addr_expr_FU_4_i0_fu_dijkstraF_28863_29534;
  wire [31:0] out_addr_expr_FU_7_i0_fu_dijkstraF_28863_29568;
  wire signed [7:0] out_bit_ior_concat_expr_FU_86_i0_fu_dijkstraF_28863_29131;
  wire out_const_0;
  wire [7:0] out_const_1;
  wire [2:0] out_const_10;
  wire [7:0] out_const_11;
  wire [1:0] out_const_2;
  wire [4:0] out_const_3;
  wire out_const_4;
  wire [3:0] out_const_5;
  wire [4:0] out_const_6;
  wire [4:0] out_const_7;
  wire [10:0] out_const_8;
  wire [1:0] out_const_9;
  wire [10:0] out_conv_in_port_a_32_11;
  wire [10:0] out_conv_out_UUdata_converter_FU_42_i0_fu_dijkstraF_28863_29275_32_11;
  wire [10:0] out_conv_out_UUdata_converter_FU_65_i0_fu_dijkstraF_28863_29407_32_11;
  wire [3:0] out_conv_out_const_3_5_4;
  wire [31:0] out_conv_out_const_8_11_32;
  wire [7:0] out_conv_out_i_assign_conn_obj_7_ASSIGN_SIGNED_FU_i_assign_0_I_1_8;
  wire [10:0] out_conv_out_reg_15_reg_15_32_11;
  wire [10:0] out_conv_out_reg_18_reg_18_32_11;
  wire [10:0] out_conv_out_reg_26_reg_26_15_11;
  wire [10:0] out_conv_out_reg_32_reg_32_32_11;
  wire [10:0] out_conv_out_reg_37_reg_37_13_11;
  wire [10:0] out_conv_out_reg_39_reg_39_32_11;
  wire [10:0] out_conv_out_reg_40_reg_40_13_11;
  wire [10:0] out_conv_out_reg_41_reg_41_32_11;
  wire [10:0] out_conv_out_reg_4_reg_4_32_11;
  wire [6:0] out_conv_out_reg_6_reg_6_8_7;
  wire [2:0] out_conv_out_u_assign_conn_obj_0_ASSIGN_UNSIGNED_FU_u_assign_7_1_3;
  wire [31:0] out_conv_out_u_assign_conn_obj_10_ASSIGN_UNSIGNED_FU_u_assign_9_11_32;
  wire [4:0] out_conv_out_u_assign_conn_obj_12_ASSIGN_UNSIGNED_FU_u_assign_10_1_5;
  wire [7:0] out_conv_out_u_assign_conn_obj_13_ASSIGN_UNSIGNED_FU_u_assign_11_1_8;
  wire [4:0] out_conv_out_u_assign_conn_obj_14_ASSIGN_UNSIGNED_FU_u_assign_12_1_5;
  wire [31:0] out_conv_out_u_assign_conn_obj_15_ASSIGN_UNSIGNED_FU_u_assign_13_11_32;
  wire [4:0] out_conv_out_u_assign_conn_obj_17_ASSIGN_UNSIGNED_FU_u_assign_14_1_5;
  wire [7:0] out_conv_out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_15_1_8;
  wire [4:0] out_conv_out_u_assign_conn_obj_3_ASSIGN_UNSIGNED_FU_u_assign_16_1_5;
  wire [4:0] out_conv_out_u_assign_conn_obj_4_ASSIGN_UNSIGNED_FU_u_assign_17_1_5;
  wire [31:0] out_conv_out_u_assign_conn_obj_9_ASSIGN_UNSIGNED_FU_u_assign_18_11_32;
  wire [10:0] out_conv_out_ui_pointer_plus_expr_FU_32_32_32_125_i0_fu_dijkstraF_28863_29505_32_11;
  wire out_eq_expr_FU_8_0_8_87_i0_fu_dijkstraF_28863_29723;
  wire out_eq_expr_FU_8_0_8_87_i1_fu_dijkstraF_28863_29725;
  wire out_eq_expr_FU_8_0_8_88_i0_fu_dijkstraF_28863_29729;
  wire signed [0:0] out_i_assign_conn_obj_7_ASSIGN_SIGNED_FU_i_assign_0;
  wire [7:0] out_iu_conv_conn_obj_11_IUdata_converter_FU_iu_conv_1;
  wire [7:0] out_iu_conv_conn_obj_16_IUdata_converter_FU_iu_conv_2;
  wire [7:0] out_iu_conv_conn_obj_18_IUdata_converter_FU_iu_conv_3;
  wire [7:0] out_iu_conv_conn_obj_5_IUdata_converter_FU_iu_conv_4;
  wire [7:0] out_iu_conv_conn_obj_6_IUdata_converter_FU_iu_conv_5;
  wire [7:0] out_iu_conv_conn_obj_8_IUdata_converter_FU_iu_conv_6;
  wire signed [7:0] out_lshift_expr_FU_8_0_8_89_i0_fu_dijkstraF_28863_29756;
  wire out_lt_expr_FU_16_16_16_90_i0_fu_dijkstraF_28863_29731;
  wire out_lt_expr_FU_8_0_8_91_i0_fu_dijkstraF_28863_29502;
  wire out_lt_expr_FU_8_8_8_92_i0_fu_dijkstraF_28863_29737;
  wire [1:0] out_multi_read_cond_FU_33_i0_fu_dijkstraF_28863_29821;
  wire out_ne_expr_FU_8_8_8_93_i0_fu_dijkstraF_28863_29715;
  wire signed [6:0] out_plus_expr_FU_8_0_8_94_i0_fu_dijkstraF_28863_29753;
  wire signed [7:0] out_plus_expr_FU_8_8_8_95_i0_fu_dijkstraF_28863_29361;
  wire out_read_cond_FU_12_i0_fu_dijkstraF_28863_29110;
  wire out_read_cond_FU_25_i0_fu_dijkstraF_28863_29159;
  wire out_read_cond_FU_28_i0_fu_dijkstraF_28863_29238;
  wire out_read_cond_FU_31_i0_fu_dijkstraF_28863_29252;
  wire out_read_cond_FU_43_i0_fu_dijkstraF_28863_29278;
  wire out_read_cond_FU_47_i0_fu_dijkstraF_28863_29298;
  wire out_read_cond_FU_56_i0_fu_dijkstraF_28863_29381;
  wire out_read_cond_FU_57_i0_fu_dijkstraF_28863_29398;
  wire out_read_cond_FU_67_i0_fu_dijkstraF_28863_29409;
  wire out_read_cond_FU_72_i0_fu_dijkstraF_28863_29442;
  wire out_read_cond_FU_81_i0_fu_dijkstraF_28863_29445;
  wire out_read_cond_FU_83_i0_fu_dijkstraF_28863_29450;
  wire out_read_cond_FU_84_i0_fu_dijkstraF_28863_29455;
  wire [2:0] out_reg_0_reg_0;
  wire [31:0] out_reg_10_reg_10;
  wire [31:0] out_reg_11_reg_11;
  wire [4:0] out_reg_12_reg_12;
  wire out_reg_13_reg_13;
  wire [31:0] out_reg_14_reg_14;
  wire [31:0] out_reg_15_reg_15;
  wire [4:0] out_reg_16_reg_16;
  wire [31:0] out_reg_17_reg_17;
  wire [31:0] out_reg_18_reg_18;
  wire out_reg_19_reg_19;
  wire [10:0] out_reg_1_reg_1;
  wire out_reg_20_reg_20;
  wire out_reg_21_reg_21;
  wire [7:0] out_reg_22_reg_22;
  wire [7:0] out_reg_23_reg_23;
  wire [31:0] out_reg_24_reg_24;
  wire [7:0] out_reg_25_reg_25;
  wire [14:0] out_reg_26_reg_26;
  wire [4:0] out_reg_27_reg_27;
  wire [4:0] out_reg_28_reg_28;
  wire [4:0] out_reg_29_reg_29;
  wire [31:0] out_reg_2_reg_2;
  wire [31:0] out_reg_30_reg_30;
  wire [8:0] out_reg_31_reg_31;
  wire [31:0] out_reg_32_reg_32;
  wire out_reg_33_reg_33;
  wire [7:0] out_reg_34_reg_34;
  wire [11:0] out_reg_35_reg_35;
  wire [4:0] out_reg_36_reg_36;
  wire [12:0] out_reg_37_reg_37;
  wire [4:0] out_reg_38_reg_38;
  wire [31:0] out_reg_39_reg_39;
  wire [31:0] out_reg_3_reg_3;
  wire [12:0] out_reg_40_reg_40;
  wire [31:0] out_reg_41_reg_41;
  wire out_reg_42_reg_42;
  wire [7:0] out_reg_43_reg_43;
  wire [7:0] out_reg_44_reg_44;
  wire [31:0] out_reg_4_reg_4;
  wire [10:0] out_reg_5_reg_5;
  wire [7:0] out_reg_6_reg_6;
  wire [7:0] out_reg_7_reg_7;
  wire [7:0] out_reg_8_reg_8;
  wire [4:0] out_reg_9_reg_9;
  wire signed [6:0] out_rshift_expr_FU_8_0_8_96_i0_fu_dijkstraF_28863_29748;
  wire out_truth_and_expr_FU_1_1_1_97_i0_fu_dijkstraF_28863_29827;
  wire out_truth_not_expr_FU_1_1_98_i0_fu_dijkstraF_28863_29824;
  wire [0:0] out_u_assign_conn_obj_0_ASSIGN_UNSIGNED_FU_u_assign_7;
  wire [10:0] out_u_assign_conn_obj_10_ASSIGN_UNSIGNED_FU_u_assign_9;
  wire [0:0] out_u_assign_conn_obj_12_ASSIGN_UNSIGNED_FU_u_assign_10;
  wire [0:0] out_u_assign_conn_obj_13_ASSIGN_UNSIGNED_FU_u_assign_11;
  wire [0:0] out_u_assign_conn_obj_14_ASSIGN_UNSIGNED_FU_u_assign_12;
  wire [10:0] out_u_assign_conn_obj_15_ASSIGN_UNSIGNED_FU_u_assign_13;
  wire [0:0] out_u_assign_conn_obj_17_ASSIGN_UNSIGNED_FU_u_assign_14;
  wire [7:0] out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_8;
  wire [0:0] out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_15;
  wire [0:0] out_u_assign_conn_obj_3_ASSIGN_UNSIGNED_FU_u_assign_16;
  wire [0:0] out_u_assign_conn_obj_4_ASSIGN_UNSIGNED_FU_u_assign_17;
  wire [10:0] out_u_assign_conn_obj_9_ASSIGN_UNSIGNED_FU_u_assign_18;
  wire [0:0] out_ui_bit_and_expr_FU_1_0_1_99_i0_fu_dijkstraF_28863_29772;
  wire [2:0] out_ui_bit_and_expr_FU_8_0_8_100_i0_fu_dijkstraF_28863_29802;
  wire [2:0] out_ui_bit_and_expr_FU_8_0_8_100_i1_fu_dijkstraF_28863_29819;
  wire [31:0] out_ui_bit_ior_concat_expr_FU_101_i0_fu_dijkstraF_28863_29227;
  wire [11:0] out_ui_bit_ior_concat_expr_FU_102_i0_fu_dijkstraF_28863_29594;
  wire [8:0] out_ui_bit_ior_concat_expr_FU_102_i1_fu_dijkstraF_28863_29637;
  wire [7:0] out_ui_cond_expr_FU_8_8_8_8_103_i0_fu_dijkstraF_28863_29828;
  wire [4:0] out_ui_cond_expr_FU_8_8_8_8_103_i1_fu_dijkstraF_28863_29831;
  wire out_ui_eq_expr_FU_8_0_8_104_i0_fu_dijkstraF_28863_29727;
  wire out_ui_eq_expr_FU_8_8_8_105_i0_fu_dijkstraF_28863_29713;
  wire [10:0] out_ui_lshift_expr_FU_16_0_16_106_i0_fu_dijkstraF_28863_29591;
  wire [11:0] out_ui_lshift_expr_FU_16_0_16_106_i1_fu_dijkstraF_28863_29797;
  wire [8:0] out_ui_lshift_expr_FU_16_0_16_106_i2_fu_dijkstraF_28863_29816;
  wire [12:0] out_ui_lshift_expr_FU_16_0_16_107_i0_fu_dijkstraF_28863_29598;
  wire [9:0] out_ui_lshift_expr_FU_16_0_16_107_i1_fu_dijkstraF_28863_29640;
  wire [31:0] out_ui_lshift_expr_FU_32_0_32_108_i0_fu_dijkstraF_28863_29769;
  wire [31:0] out_ui_lshift_expr_FU_32_0_32_108_i1_fu_dijkstraF_28863_29782;
  wire [7:0] out_ui_lshift_expr_FU_8_0_8_109_i0_fu_dijkstraF_28863_29108;
  wire [7:0] out_ui_lshift_expr_FU_8_0_8_110_i0_fu_dijkstraF_28863_29634;
  wire out_ui_ne_expr_FU_32_32_32_111_i0_fu_dijkstraF_28863_29721;
  wire out_ui_ne_expr_FU_8_0_8_112_i0_fu_dijkstraF_28863_29711;
  wire out_ui_ne_expr_FU_8_0_8_113_i0_fu_dijkstraF_28863_29717;
  wire out_ui_ne_expr_FU_8_0_8_113_i1_fu_dijkstraF_28863_29733;
  wire out_ui_ne_expr_FU_8_0_8_113_i2_fu_dijkstraF_28863_29739;
  wire out_ui_ne_expr_FU_8_0_8_114_i0_fu_dijkstraF_28863_29719;
  wire out_ui_ne_expr_FU_8_8_8_115_i0_fu_dijkstraF_28863_29735;
  wire [7:0] out_ui_negate_expr_FU_8_8_116_i0_fu_dijkstraF_28863_29192;
  wire [31:0] out_ui_plus_expr_FU_32_0_32_117_i0_fu_dijkstraF_28863_29233;
  wire [31:0] out_ui_plus_expr_FU_32_0_32_117_i1_fu_dijkstraF_28863_29277;
  wire [31:0] out_ui_plus_expr_FU_32_0_32_118_i0_fu_dijkstraF_28863_29424;
  wire [30:0] out_ui_plus_expr_FU_32_0_32_119_i0_fu_dijkstraF_28863_29766;
  wire [30:0] out_ui_plus_expr_FU_32_0_32_119_i1_fu_dijkstraF_28863_29779;
  wire [2:0] out_ui_plus_expr_FU_8_0_8_120_i0_fu_dijkstraF_28863_29109;
  wire [4:0] out_ui_plus_expr_FU_8_0_8_120_i1_fu_dijkstraF_28863_29248;
  wire [7:0] out_ui_plus_expr_FU_8_0_8_120_i2_fu_dijkstraF_28863_29375;
  wire [4:0] out_ui_plus_expr_FU_8_0_8_121_i0_fu_dijkstraF_28863_29222;
  wire [4:0] out_ui_plus_expr_FU_8_0_8_121_i1_fu_dijkstraF_28863_29315;
  wire [4:0] out_ui_plus_expr_FU_8_0_8_121_i2_fu_dijkstraF_28863_29358;
  wire [8:0] out_ui_plus_expr_FU_8_8_8_122_i0_fu_dijkstraF_28863_29793;
  wire [5:0] out_ui_plus_expr_FU_8_8_8_122_i1_fu_dijkstraF_28863_29812;
  wire [11:0] out_ui_pointer_plus_expr_FU_16_16_16_123_i0_fu_dijkstraF_28863_29330;
  wire [13:0] out_ui_pointer_plus_expr_FU_16_16_16_123_i1_fu_dijkstraF_28863_29378;
  wire [14:0] out_ui_pointer_plus_expr_FU_16_16_16_123_i2_fu_dijkstraF_28863_29610;
  wire [12:0] out_ui_pointer_plus_expr_FU_16_16_16_123_i3_fu_dijkstraF_28863_29652;
  wire [12:0] out_ui_pointer_plus_expr_FU_16_16_16_123_i4_fu_dijkstraF_28863_29685;
  wire [31:0] out_ui_pointer_plus_expr_FU_32_0_32_124_i0_fu_dijkstraF_28863_29543;
  wire [31:0] out_ui_pointer_plus_expr_FU_32_32_32_125_i0_fu_dijkstraF_28863_29505;
  wire [31:0] out_ui_pointer_plus_expr_FU_32_32_32_125_i1_fu_dijkstraF_28863_29630;
  wire [31:0] out_ui_pointer_plus_expr_FU_32_32_32_125_i2_fu_dijkstraF_28863_29669;
  wire [31:0] out_ui_pointer_plus_expr_FU_32_32_32_125_i3_fu_dijkstraF_28863_29692;
  wire [7:0] out_ui_rshift_expr_FU_16_0_16_126_i0_fu_dijkstraF_28863_29786;
  wire [30:0] out_ui_rshift_expr_FU_32_0_32_127_i0_fu_dijkstraF_28863_29761;
  wire [30:0] out_ui_rshift_expr_FU_32_0_32_127_i1_fu_dijkstraF_28863_29777;
  wire [4:0] out_ui_rshift_expr_FU_8_0_8_128_i0_fu_dijkstraF_28863_29790;
  wire [4:0] out_ui_rshift_expr_FU_8_0_8_128_i1_fu_dijkstraF_28863_29807;
  wire [1:0] out_ui_rshift_expr_FU_8_0_8_128_i2_fu_dijkstraF_28863_29810;
  wire [15:0] sig_in_bus_mergerMout_Wdata_ram0_0;
  wire [21:0] sig_in_bus_mergerMout_addr_ram1_0;
  wire [7:0] sig_in_bus_mergerMout_data_ram_size2_0;
  wire [1:0] sig_in_bus_mergerMout_oe_ram3_0;
  wire [1:0] sig_in_bus_mergerMout_we_ram4_0;
  wire [1:0] sig_in_bus_mergerSout_DataRdy5_0;
  wire [15:0] sig_in_bus_mergerSout_Rdata_ram6_0;
  wire [15:0] sig_in_vector_bus_mergerMout_Wdata_ram0_0;
  wire [21:0] sig_in_vector_bus_mergerMout_addr_ram1_0;
  wire [7:0] sig_in_vector_bus_mergerMout_data_ram_size2_0;
  wire [1:0] sig_in_vector_bus_mergerMout_oe_ram3_0;
  wire [1:0] sig_in_vector_bus_mergerMout_we_ram4_0;
  wire [1:0] sig_in_vector_bus_mergerSout_DataRdy5_0;
  wire [15:0] sig_in_vector_bus_mergerSout_Rdata_ram6_0;
  wire [15:0] sig_out_bus_mergerMout_Wdata_ram0_;
  wire [21:0] sig_out_bus_mergerMout_addr_ram1_;
  wire [7:0] sig_out_bus_mergerMout_data_ram_size2_;
  wire [1:0] sig_out_bus_mergerMout_oe_ram3_;
  wire [1:0] sig_out_bus_mergerMout_we_ram4_;
  wire [1:0] sig_out_bus_mergerSout_DataRdy5_;
  wire [15:0] sig_out_bus_mergerSout_Rdata_ram6_;
  
  ASSIGN_SIGNED_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) ASSIGN_SIGNED_FU_i_assign_0 (.out1(out_i_assign_conn_obj_7_ASSIGN_SIGNED_FU_i_assign_0), .in1(out_const_0));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) ASSIGN_UNSIGNED_FU_u_assign_10 (.out1(out_u_assign_conn_obj_12_ASSIGN_UNSIGNED_FU_u_assign_10), .in1(out_const_0));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) ASSIGN_UNSIGNED_FU_u_assign_11 (.out1(out_u_assign_conn_obj_13_ASSIGN_UNSIGNED_FU_u_assign_11), .in1(out_const_0));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) ASSIGN_UNSIGNED_FU_u_assign_12 (.out1(out_u_assign_conn_obj_14_ASSIGN_UNSIGNED_FU_u_assign_12), .in1(out_const_0));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(11), .BITSIZE_out1(11)) ASSIGN_UNSIGNED_FU_u_assign_13 (.out1(out_u_assign_conn_obj_15_ASSIGN_UNSIGNED_FU_u_assign_13), .in1(out_reg_1_reg_1));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) ASSIGN_UNSIGNED_FU_u_assign_14 (.out1(out_u_assign_conn_obj_17_ASSIGN_UNSIGNED_FU_u_assign_14), .in1(out_const_0));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) ASSIGN_UNSIGNED_FU_u_assign_15 (.out1(out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_15), .in1(out_const_4));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) ASSIGN_UNSIGNED_FU_u_assign_16 (.out1(out_u_assign_conn_obj_3_ASSIGN_UNSIGNED_FU_u_assign_16), .in1(out_const_0));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) ASSIGN_UNSIGNED_FU_u_assign_17 (.out1(out_u_assign_conn_obj_4_ASSIGN_UNSIGNED_FU_u_assign_17), .in1(out_const_0));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(11), .BITSIZE_out1(11)) ASSIGN_UNSIGNED_FU_u_assign_18 (.out1(out_u_assign_conn_obj_9_ASSIGN_UNSIGNED_FU_u_assign_18), .in1(out_reg_1_reg_1));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) ASSIGN_UNSIGNED_FU_u_assign_7 (.out1(out_u_assign_conn_obj_0_ASSIGN_UNSIGNED_FU_u_assign_7), .in1(out_const_0));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_UNSIGNED_FU_u_assign_8 (.out1(out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_8), .in1(out_ui_lshift_expr_FU_8_0_8_109_i0_fu_dijkstraF_28863_29108));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(11), .BITSIZE_out1(11)) ASSIGN_UNSIGNED_FU_u_assign_9 (.out1(out_u_assign_conn_obj_10_ASSIGN_UNSIGNED_FU_u_assign_9), .in1(out_reg_1_reg_1));
  BMEMORY_CTRLN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(11), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_Min_oe_ram(1), .PORTSIZE_Min_oe_ram(2), .BITSIZE_Min_we_ram(1), .PORTSIZE_Min_we_ram(2), .BITSIZE_Mout_oe_ram(1), .PORTSIZE_Mout_oe_ram(2), .BITSIZE_Mout_we_ram(1), .PORTSIZE_Mout_we_ram(2), .BITSIZE_M_DataRdy(1), .PORTSIZE_M_DataRdy(2), .BITSIZE_Min_addr_ram(11), .PORTSIZE_Min_addr_ram(2), .BITSIZE_Mout_addr_ram(11), .PORTSIZE_Mout_addr_ram(2), .BITSIZE_M_Rdata_ram(8), .PORTSIZE_M_Rdata_ram(2), .BITSIZE_Min_Wdata_ram(8), .PORTSIZE_Min_Wdata_ram(2), .BITSIZE_Mout_Wdata_ram(8), .PORTSIZE_Mout_Wdata_ram(2), .BITSIZE_Min_data_ram_size(4), .PORTSIZE_Min_data_ram_size(2), .BITSIZE_Mout_data_ram_size(4), .PORTSIZE_Mout_data_ram_size(2)) BMEMORY_CTRLN_85_i0 (.out1({null_out_signal_BMEMORY_CTRLN_85_i0_out1_1, out_BMEMORY_CTRLN_85_i0_BMEMORY_CTRLN_85_i0}), .Mout_oe_ram(sig_in_vector_bus_mergerMout_oe_ram3_0), .Mout_we_ram(sig_in_vector_bus_mergerMout_we_ram4_0), .Mout_addr_ram(sig_in_vector_bus_mergerMout_addr_ram1_0), .Mout_Wdata_ram(sig_in_vector_bus_mergerMout_Wdata_ram0_0), .Mout_data_ram_size(sig_in_vector_bus_mergerMout_data_ram_size2_0), .clock(clock), .in1({8'b00000000, out_MUX_8_BMEMORY_CTRLN_85_i0_0_1_0}), .in2({11'b00000000000, out_MUX_9_BMEMORY_CTRLN_85_i0_1_2_0}), .in3({4'b0000, out_conv_out_const_3_5_4}), .in4({1'b0, out_const_4}), .sel_LOAD({1'b0, fuselector_BMEMORY_CTRLN_85_i0_LOAD}), .sel_STORE({1'b0, fuselector_BMEMORY_CTRLN_85_i0_STORE}), .Min_oe_ram(Min_oe_ram), .Min_we_ram(Min_we_ram), .Min_addr_ram(Min_addr_ram), .M_Rdata_ram(M_Rdata_ram), .Min_Wdata_ram(Min_Wdata_ram), .Min_data_ram_size(Min_data_ram_size), .M_DataRdy(M_DataRdy));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_1 (.out1(out_iu_conv_conn_obj_11_IUdata_converter_FU_iu_conv_1), .in1(out_reg_7_reg_7));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_2 (.out1(out_iu_conv_conn_obj_16_IUdata_converter_FU_iu_conv_2), .in1(out_const_11));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_3 (.out1(out_iu_conv_conn_obj_18_IUdata_converter_FU_iu_conv_3), .in1(out_reg_44_reg_44));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_4 (.out1(out_iu_conv_conn_obj_5_IUdata_converter_FU_iu_conv_4), .in1(out_reg_22_reg_22));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_5 (.out1(out_iu_conv_conn_obj_6_IUdata_converter_FU_iu_conv_5), .in1(out_const_1));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_6 (.out1(out_iu_conv_conn_obj_8_IUdata_converter_FU_iu_conv_6), .in1(out_reg_23_reg_23));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_0_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_0_0_0 (.out1(out_MUX_0_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_0_0_0), .sel(selector_MUX_0_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_0_0_0), .in1(out_iu_conv_conn_obj_11_IUdata_converter_FU_iu_conv_1), .in2(out_iu_conv_conn_obj_18_IUdata_converter_FU_iu_conv_3));
  MUX_GATE #(.BITSIZE_in1(3), .BITSIZE_in2(3), .BITSIZE_out1(3)) MUX_100_reg_0_0_0_0 (.out1(out_MUX_100_reg_0_0_0_0), .sel(selector_MUX_100_reg_0_0_0_0), .in1(out_conv_out_u_assign_conn_obj_0_ASSIGN_UNSIGNED_FU_u_assign_7_1_3), .in2(out_ui_plus_expr_FU_8_0_8_120_i0_fu_dijkstraF_28863_29109));
  MUX_GATE #(.BITSIZE_in1(32), .BITSIZE_in2(32), .BITSIZE_out1(32)) MUX_103_reg_11_0_0_0 (.out1(out_MUX_103_reg_11_0_0_0), .sel(selector_MUX_103_reg_11_0_0_0), .in1(out_conv_out_u_assign_conn_obj_10_ASSIGN_UNSIGNED_FU_u_assign_9_11_32), .in2(out_ui_plus_expr_FU_32_0_32_117_i0_fu_dijkstraF_28863_29233));
  MUX_GATE #(.BITSIZE_in1(32), .BITSIZE_in2(32), .BITSIZE_out1(32)) MUX_106_reg_14_0_0_0 (.out1(out_MUX_106_reg_14_0_0_0), .sel(selector_MUX_106_reg_14_0_0_0), .in1(out_conv_out_u_assign_conn_obj_9_ASSIGN_UNSIGNED_FU_u_assign_18_11_32), .in2(out_ui_lshift_expr_FU_32_0_32_108_i1_fu_dijkstraF_28863_29782));
  MUX_GATE #(.BITSIZE_in1(5), .BITSIZE_in2(5), .BITSIZE_out1(5)) MUX_108_reg_16_0_0_0 (.out1(out_MUX_108_reg_16_0_0_0), .sel(selector_MUX_108_reg_16_0_0_0), .in1(out_conv_out_u_assign_conn_obj_4_ASSIGN_UNSIGNED_FU_u_assign_17_1_5), .in2(out_ui_plus_expr_FU_8_0_8_121_i0_fu_dijkstraF_28863_29222));
  MUX_GATE #(.BITSIZE_in1(32), .BITSIZE_in2(32), .BITSIZE_out1(32)) MUX_109_reg_17_0_0_0 (.out1(out_MUX_109_reg_17_0_0_0), .sel(selector_MUX_109_reg_17_0_0_0), .in1(out_reg_11_reg_11), .in2(out_ui_bit_ior_concat_expr_FU_101_i0_fu_dijkstraF_28863_29227));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_115_reg_22_0_0_0 (.out1(out_MUX_115_reg_22_0_0_0), .sel(selector_MUX_115_reg_22_0_0_0), .in1(out_BMEMORY_CTRLN_85_i0_BMEMORY_CTRLN_85_i0), .in2(out_UIdata_converter_FU_22_i0_fu_dijkstraF_28863_29188));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_116_reg_23_0_0_0 (.out1(out_MUX_116_reg_23_0_0_0), .sel(selector_MUX_116_reg_23_0_0_0), .in1(out_reg_22_reg_22), .in2(out_conv_out_i_assign_conn_obj_7_ASSIGN_SIGNED_FU_i_assign_0_I_1_8));
  MUX_GATE #(.BITSIZE_in1(32), .BITSIZE_in2(32), .BITSIZE_out1(32)) MUX_117_reg_24_0_0_0 (.out1(out_MUX_117_reg_24_0_0_0), .sel(selector_MUX_117_reg_24_0_0_0), .in1(out_UUdata_converter_FU_5_i0_fu_dijkstraF_28863_29260), .in2(out_ui_plus_expr_FU_32_0_32_117_i1_fu_dijkstraF_28863_29277));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_118_reg_25_0_0_0 (.out1(out_MUX_118_reg_25_0_0_0), .sel(selector_MUX_118_reg_25_0_0_0), .in1(out_conv_out_u_assign_conn_obj_13_ASSIGN_UNSIGNED_FU_u_assign_11_1_8), .in2(out_ui_plus_expr_FU_8_0_8_120_i2_fu_dijkstraF_28863_29375));
  MUX_GATE #(.BITSIZE_in1(5), .BITSIZE_in2(5), .BITSIZE_out1(5)) MUX_120_reg_27_0_0_0 (.out1(out_MUX_120_reg_27_0_0_0), .sel(selector_MUX_120_reg_27_0_0_0), .in1(out_conv_out_u_assign_conn_obj_12_ASSIGN_UNSIGNED_FU_u_assign_10_1_5), .in2(out_ui_cond_expr_FU_8_8_8_8_103_i1_fu_dijkstraF_28863_29831));
  MUX_GATE #(.BITSIZE_in1(5), .BITSIZE_in2(5), .BITSIZE_out1(5)) MUX_122_reg_29_0_0_0 (.out1(out_MUX_122_reg_29_0_0_0), .sel(selector_MUX_122_reg_29_0_0_0), .in1(out_conv_out_u_assign_conn_obj_14_ASSIGN_UNSIGNED_FU_u_assign_12_1_5), .in2(out_ui_plus_expr_FU_8_0_8_121_i1_fu_dijkstraF_28863_29315));
  MUX_GATE #(.BITSIZE_in1(32), .BITSIZE_in2(32), .BITSIZE_out1(32)) MUX_124_reg_30_0_0_0 (.out1(out_MUX_124_reg_30_0_0_0), .sel(selector_MUX_124_reg_30_0_0_0), .in1(out_conv_out_u_assign_conn_obj_15_ASSIGN_UNSIGNED_FU_u_assign_13_11_32), .in2(out_ui_plus_expr_FU_32_0_32_118_i0_fu_dijkstraF_28863_29424));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_128_reg_34_0_0_0 (.out1(out_MUX_128_reg_34_0_0_0), .sel(selector_MUX_128_reg_34_0_0_0), .in1(out_reg_8_reg_8), .in2(out_ui_cond_expr_FU_8_8_8_8_103_i0_fu_dijkstraF_28863_29828));
  MUX_GATE #(.BITSIZE_in1(5), .BITSIZE_in2(5), .BITSIZE_out1(5)) MUX_132_reg_38_0_0_0 (.out1(out_MUX_132_reg_38_0_0_0), .sel(selector_MUX_132_reg_38_0_0_0), .in1(out_conv_out_u_assign_conn_obj_17_ASSIGN_UNSIGNED_FU_u_assign_14_1_5), .in2(out_ui_plus_expr_FU_8_0_8_121_i2_fu_dijkstraF_28863_29358));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_141_reg_6_0_0_0 (.out1(out_MUX_141_reg_6_0_0_0), .sel(selector_MUX_141_reg_6_0_0_0), .in1(out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_8), .in2(out_conv_out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_15_1_8));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_141_reg_6_0_0_1 (.out1(out_MUX_141_reg_6_0_0_1), .sel(selector_MUX_141_reg_6_0_0_1), .in1(out_ui_lshift_expr_FU_8_0_8_109_i0_fu_dijkstraF_28863_29108), .in2(out_MUX_141_reg_6_0_0_0));
  MUX_GATE #(.BITSIZE_in1(5), .BITSIZE_in2(5), .BITSIZE_out1(5)) MUX_144_reg_9_0_0_0 (.out1(out_MUX_144_reg_9_0_0_0), .sel(selector_MUX_144_reg_9_0_0_0), .in1(out_reg_12_reg_12), .in2(out_conv_out_u_assign_conn_obj_3_ASSIGN_UNSIGNED_FU_u_assign_16_1_5));
  MUX_GATE #(.BITSIZE_in1(11), .BITSIZE_in2(11), .BITSIZE_out1(11)) MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0 (.out1(out_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0), .sel(selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0), .in1(out_conv_out_reg_41_reg_41_32_11), .in2(out_conv_out_UUdata_converter_FU_42_i0_fu_dijkstraF_28863_29275_32_11));
  MUX_GATE #(.BITSIZE_in1(11), .BITSIZE_in2(11), .BITSIZE_out1(11)) MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_1_0_0 (.out1(out_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_1_0_0), .sel(selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_1_0_0), .in1(out_conv_out_reg_4_reg_4_32_11), .in2(out_conv_out_reg_39_reg_39_32_11));
  MUX_GATE #(.BITSIZE_in1(11), .BITSIZE_in2(11), .BITSIZE_out1(11)) MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_1_0_1 (.out1(out_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_1_0_1), .sel(selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_1_0_1), .in1(out_conv_out_reg_32_reg_32_32_11), .in2(out_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_1_0_0));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_8_BMEMORY_CTRLN_85_i0_0_0_0 (.out1(out_MUX_8_BMEMORY_CTRLN_85_i0_0_0_0), .sel(selector_MUX_8_BMEMORY_CTRLN_85_i0_0_0_0), .in1(out_iu_conv_conn_obj_16_IUdata_converter_FU_iu_conv_2), .in2(out_iu_conv_conn_obj_5_IUdata_converter_FU_iu_conv_4));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_8_BMEMORY_CTRLN_85_i0_0_0_1 (.out1(out_MUX_8_BMEMORY_CTRLN_85_i0_0_0_1), .sel(selector_MUX_8_BMEMORY_CTRLN_85_i0_0_0_1), .in1(out_iu_conv_conn_obj_6_IUdata_converter_FU_iu_conv_5), .in2(out_iu_conv_conn_obj_8_IUdata_converter_FU_iu_conv_6));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_8_BMEMORY_CTRLN_85_i0_0_1_0 (.out1(out_MUX_8_BMEMORY_CTRLN_85_i0_0_1_0), .sel(selector_MUX_8_BMEMORY_CTRLN_85_i0_0_1_0), .in1(out_MUX_8_BMEMORY_CTRLN_85_i0_0_0_0), .in2(out_MUX_8_BMEMORY_CTRLN_85_i0_0_0_1));
  MUX_GATE #(.BITSIZE_in1(11), .BITSIZE_in2(11), .BITSIZE_out1(11)) MUX_9_BMEMORY_CTRLN_85_i0_1_0_0 (.out1(out_MUX_9_BMEMORY_CTRLN_85_i0_1_0_0), .sel(selector_MUX_9_BMEMORY_CTRLN_85_i0_1_0_0), .in1(out_reg_5_reg_5), .in2(out_conv_out_reg_40_reg_40_13_11));
  MUX_GATE #(.BITSIZE_in1(11), .BITSIZE_in2(11), .BITSIZE_out1(11)) MUX_9_BMEMORY_CTRLN_85_i0_1_0_1 (.out1(out_MUX_9_BMEMORY_CTRLN_85_i0_1_0_1), .sel(selector_MUX_9_BMEMORY_CTRLN_85_i0_1_0_1), .in1(out_conv_out_reg_37_reg_37_13_11), .in2(out_conv_out_reg_26_reg_26_15_11));
  MUX_GATE #(.BITSIZE_in1(11), .BITSIZE_in2(11), .BITSIZE_out1(11)) MUX_9_BMEMORY_CTRLN_85_i0_1_0_2 (.out1(out_MUX_9_BMEMORY_CTRLN_85_i0_1_0_2), .sel(selector_MUX_9_BMEMORY_CTRLN_85_i0_1_0_2), .in1(out_conv_out_reg_18_reg_18_32_11), .in2(out_conv_out_reg_15_reg_15_32_11));
  MUX_GATE #(.BITSIZE_in1(11), .BITSIZE_in2(11), .BITSIZE_out1(11)) MUX_9_BMEMORY_CTRLN_85_i0_1_0_3 (.out1(out_MUX_9_BMEMORY_CTRLN_85_i0_1_0_3), .sel(selector_MUX_9_BMEMORY_CTRLN_85_i0_1_0_3), .in1(out_conv_out_UUdata_converter_FU_65_i0_fu_dijkstraF_28863_29407_32_11), .in2(out_conv_out_ui_pointer_plus_expr_FU_32_32_32_125_i0_fu_dijkstraF_28863_29505_32_11));
  MUX_GATE #(.BITSIZE_in1(11), .BITSIZE_in2(11), .BITSIZE_out1(11)) MUX_9_BMEMORY_CTRLN_85_i0_1_1_0 (.out1(out_MUX_9_BMEMORY_CTRLN_85_i0_1_1_0), .sel(selector_MUX_9_BMEMORY_CTRLN_85_i0_1_1_0), .in1(out_MUX_9_BMEMORY_CTRLN_85_i0_1_0_0), .in2(out_MUX_9_BMEMORY_CTRLN_85_i0_1_0_1));
  MUX_GATE #(.BITSIZE_in1(11), .BITSIZE_in2(11), .BITSIZE_out1(11)) MUX_9_BMEMORY_CTRLN_85_i0_1_1_1 (.out1(out_MUX_9_BMEMORY_CTRLN_85_i0_1_1_1), .sel(selector_MUX_9_BMEMORY_CTRLN_85_i0_1_1_1), .in1(out_MUX_9_BMEMORY_CTRLN_85_i0_1_0_2), .in2(out_MUX_9_BMEMORY_CTRLN_85_i0_1_0_3));
  MUX_GATE #(.BITSIZE_in1(11), .BITSIZE_in2(11), .BITSIZE_out1(11)) MUX_9_BMEMORY_CTRLN_85_i0_1_2_0 (.out1(out_MUX_9_BMEMORY_CTRLN_85_i0_1_2_0), .sel(selector_MUX_9_BMEMORY_CTRLN_85_i0_1_2_0), .in1(out_MUX_9_BMEMORY_CTRLN_85_i0_1_1_0), .in2(out_MUX_9_BMEMORY_CTRLN_85_i0_1_1_1));
  ARRAY_1D_STD_BRAM_NN_SDS_BUS #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(11), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_S_oe_ram(1), .PORTSIZE_S_oe_ram(2), .BITSIZE_S_we_ram(1), .PORTSIZE_S_we_ram(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_S_addr_ram(11), .PORTSIZE_S_addr_ram(2), .BITSIZE_S_Wdata_ram(8), .PORTSIZE_S_Wdata_ram(2), .BITSIZE_Sin_Rdata_ram(8), .PORTSIZE_Sin_Rdata_ram(2), .BITSIZE_Sout_Rdata_ram(8), .PORTSIZE_Sout_Rdata_ram(2), .BITSIZE_S_data_ram_size(4), .PORTSIZE_S_data_ram_size(2), .BITSIZE_Sin_DataRdy(1), .PORTSIZE_Sin_DataRdy(2), .BITSIZE_Sout_DataRdy(1), .PORTSIZE_Sout_DataRdy(2), .MEMORY_INIT_file("array_ref_28859.mem"), .n_elements(18), .data_size(8), .address_space_begin(MEM_var_28859_28863), .address_space_rangesize(512), .BUS_PIPELINED(1), .BRAM_BITSIZE(8), .PRIVATE_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(11), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) array_28859_0 (.out1({out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_array_28859_0, out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_array_28859_0}), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram6_0), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy5_0), .proxy_out1({null_out_signal_array_28859_0_proxy_out1_1, null_out_signal_array_28859_0_proxy_out1_0}), .clock(clock), .reset(reset), .in1({out_iu_conv_conn_obj_6_IUdata_converter_FU_iu_conv_5, out_MUX_0_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_0_0_0}), .in2({out_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_1_0_1, out_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0}), .in3({out_conv_out_const_3_5_4, out_conv_out_const_3_5_4}), .in4({out_const_4, out_const_4}), .sel_LOAD({fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD}), .sel_STORE({fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_STORE, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE}), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1({8'b00000000, 8'b00000000}), .proxy_in2({11'b00000000000, 11'b00000000000}), .proxy_in3({4'b0000, 4'b0000}), .proxy_sel_LOAD({1'b0, 1'b0}), .proxy_sel_STORE({1'b0, 1'b0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerMout_Wdata_ram0_ (.out1(sig_out_bus_mergerMout_Wdata_ram0_), .in1({sig_in_bus_mergerMout_Wdata_ram0_0}));
  bus_merger #(.BITSIZE_in1(22), .PORTSIZE_in1(1), .BITSIZE_out1(22)) bus_mergerMout_addr_ram1_ (.out1(sig_out_bus_mergerMout_addr_ram1_), .in1({sig_in_bus_mergerMout_addr_ram1_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerMout_data_ram_size2_ (.out1(sig_out_bus_mergerMout_data_ram_size2_), .in1({sig_in_bus_mergerMout_data_ram_size2_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerMout_oe_ram3_ (.out1(sig_out_bus_mergerMout_oe_ram3_), .in1({sig_in_bus_mergerMout_oe_ram3_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerMout_we_ram4_ (.out1(sig_out_bus_mergerMout_we_ram4_), .in1({sig_in_bus_mergerMout_we_ram4_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerSout_DataRdy5_ (.out1(sig_out_bus_mergerSout_DataRdy5_), .in1({sig_in_bus_mergerSout_DataRdy5_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerSout_Rdata_ram6_ (.out1(sig_out_bus_mergerSout_Rdata_ram6_), .in1({sig_in_bus_mergerSout_Rdata_ram6_0}));
  constant_value #(.BITSIZE_out1(1), .value(1'b0)) const_0 (.out1(out_const_0));
  constant_value #(.BITSIZE_out1(8), .value(8'b00000000)) const_1 (.out1(out_const_1));
  constant_value #(.BITSIZE_out1(3), .value(3'b111)) const_10 (.out1(out_const_10));
  constant_value #(.BITSIZE_out1(8), .value(8'b11111111)) const_11 (.out1(out_const_11));
  constant_value #(.BITSIZE_out1(2), .value(2'b01)) const_2 (.out1(out_const_2));
  constant_value #(.BITSIZE_out1(5), .value(5'b01000)) const_3 (.out1(out_const_3));
  constant_value #(.BITSIZE_out1(1), .value(1'b1)) const_4 (.out1(out_const_4));
  constant_value #(.BITSIZE_out1(4), .value(4'b1001)) const_5 (.out1(out_const_5));
  constant_value #(.BITSIZE_out1(5), .value(5'b10010)) const_6 (.out1(out_const_6));
  constant_value #(.BITSIZE_out1(5), .value(5'b10011)) const_7 (.out1(out_const_7));
  constant_value #(.BITSIZE_out1(11), .value(MEM_var_28859_28863)) const_8 (.out1(out_const_8));
  constant_value #(.BITSIZE_out1(2), .value(2'b11)) const_9 (.out1(out_const_9));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(11)) conv_in_port_a_32_11 (.out1(out_conv_in_port_a_32_11), .in1(in_port_a));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(11)) conv_out_UUdata_converter_FU_42_i0_fu_dijkstraF_28863_29275_32_11 (.out1(out_conv_out_UUdata_converter_FU_42_i0_fu_dijkstraF_28863_29275_32_11), .in1(out_UUdata_converter_FU_42_i0_fu_dijkstraF_28863_29275));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(11)) conv_out_UUdata_converter_FU_65_i0_fu_dijkstraF_28863_29407_32_11 (.out1(out_conv_out_UUdata_converter_FU_65_i0_fu_dijkstraF_28863_29407_32_11), .in1(out_UUdata_converter_FU_65_i0_fu_dijkstraF_28863_29407));
  UUdata_converter_FU #(.BITSIZE_in1(5), .BITSIZE_out1(4)) conv_out_const_3_5_4 (.out1(out_conv_out_const_3_5_4), .in1(out_const_3));
  UUdata_converter_FU #(.BITSIZE_in1(11), .BITSIZE_out1(32)) conv_out_const_8_11_32 (.out1(out_conv_out_const_8_11_32), .in1(out_const_8));
  IUdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(8)) conv_out_i_assign_conn_obj_7_ASSIGN_SIGNED_FU_i_assign_0_I_1_8 (.out1(out_conv_out_i_assign_conn_obj_7_ASSIGN_SIGNED_FU_i_assign_0_I_1_8), .in1(out_i_assign_conn_obj_7_ASSIGN_SIGNED_FU_i_assign_0));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(11)) conv_out_reg_15_reg_15_32_11 (.out1(out_conv_out_reg_15_reg_15_32_11), .in1(out_reg_15_reg_15));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(11)) conv_out_reg_18_reg_18_32_11 (.out1(out_conv_out_reg_18_reg_18_32_11), .in1(out_reg_18_reg_18));
  UUdata_converter_FU #(.BITSIZE_in1(15), .BITSIZE_out1(11)) conv_out_reg_26_reg_26_15_11 (.out1(out_conv_out_reg_26_reg_26_15_11), .in1(out_reg_26_reg_26));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(11)) conv_out_reg_32_reg_32_32_11 (.out1(out_conv_out_reg_32_reg_32_32_11), .in1(out_reg_32_reg_32));
  UUdata_converter_FU #(.BITSIZE_in1(13), .BITSIZE_out1(11)) conv_out_reg_37_reg_37_13_11 (.out1(out_conv_out_reg_37_reg_37_13_11), .in1(out_reg_37_reg_37));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(11)) conv_out_reg_39_reg_39_32_11 (.out1(out_conv_out_reg_39_reg_39_32_11), .in1(out_reg_39_reg_39));
  UUdata_converter_FU #(.BITSIZE_in1(13), .BITSIZE_out1(11)) conv_out_reg_40_reg_40_13_11 (.out1(out_conv_out_reg_40_reg_40_13_11), .in1(out_reg_40_reg_40));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(11)) conv_out_reg_41_reg_41_32_11 (.out1(out_conv_out_reg_41_reg_41_32_11), .in1(out_reg_41_reg_41));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(11)) conv_out_reg_4_reg_4_32_11 (.out1(out_conv_out_reg_4_reg_4_32_11), .in1(out_reg_4_reg_4));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(7)) conv_out_reg_6_reg_6_8_7 (.out1(out_conv_out_reg_6_reg_6_8_7), .in1(out_reg_6_reg_6));
  UUdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(3)) conv_out_u_assign_conn_obj_0_ASSIGN_UNSIGNED_FU_u_assign_7_1_3 (.out1(out_conv_out_u_assign_conn_obj_0_ASSIGN_UNSIGNED_FU_u_assign_7_1_3), .in1(out_u_assign_conn_obj_0_ASSIGN_UNSIGNED_FU_u_assign_7));
  UUdata_converter_FU #(.BITSIZE_in1(11), .BITSIZE_out1(32)) conv_out_u_assign_conn_obj_10_ASSIGN_UNSIGNED_FU_u_assign_9_11_32 (.out1(out_conv_out_u_assign_conn_obj_10_ASSIGN_UNSIGNED_FU_u_assign_9_11_32), .in1(out_u_assign_conn_obj_10_ASSIGN_UNSIGNED_FU_u_assign_9));
  UUdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(5)) conv_out_u_assign_conn_obj_12_ASSIGN_UNSIGNED_FU_u_assign_10_1_5 (.out1(out_conv_out_u_assign_conn_obj_12_ASSIGN_UNSIGNED_FU_u_assign_10_1_5), .in1(out_u_assign_conn_obj_12_ASSIGN_UNSIGNED_FU_u_assign_10));
  UUdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(8)) conv_out_u_assign_conn_obj_13_ASSIGN_UNSIGNED_FU_u_assign_11_1_8 (.out1(out_conv_out_u_assign_conn_obj_13_ASSIGN_UNSIGNED_FU_u_assign_11_1_8), .in1(out_u_assign_conn_obj_13_ASSIGN_UNSIGNED_FU_u_assign_11));
  UUdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(5)) conv_out_u_assign_conn_obj_14_ASSIGN_UNSIGNED_FU_u_assign_12_1_5 (.out1(out_conv_out_u_assign_conn_obj_14_ASSIGN_UNSIGNED_FU_u_assign_12_1_5), .in1(out_u_assign_conn_obj_14_ASSIGN_UNSIGNED_FU_u_assign_12));
  UUdata_converter_FU #(.BITSIZE_in1(11), .BITSIZE_out1(32)) conv_out_u_assign_conn_obj_15_ASSIGN_UNSIGNED_FU_u_assign_13_11_32 (.out1(out_conv_out_u_assign_conn_obj_15_ASSIGN_UNSIGNED_FU_u_assign_13_11_32), .in1(out_u_assign_conn_obj_15_ASSIGN_UNSIGNED_FU_u_assign_13));
  UUdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(5)) conv_out_u_assign_conn_obj_17_ASSIGN_UNSIGNED_FU_u_assign_14_1_5 (.out1(out_conv_out_u_assign_conn_obj_17_ASSIGN_UNSIGNED_FU_u_assign_14_1_5), .in1(out_u_assign_conn_obj_17_ASSIGN_UNSIGNED_FU_u_assign_14));
  UUdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(8)) conv_out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_15_1_8 (.out1(out_conv_out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_15_1_8), .in1(out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_15));
  UUdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(5)) conv_out_u_assign_conn_obj_3_ASSIGN_UNSIGNED_FU_u_assign_16_1_5 (.out1(out_conv_out_u_assign_conn_obj_3_ASSIGN_UNSIGNED_FU_u_assign_16_1_5), .in1(out_u_assign_conn_obj_3_ASSIGN_UNSIGNED_FU_u_assign_16));
  UUdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(5)) conv_out_u_assign_conn_obj_4_ASSIGN_UNSIGNED_FU_u_assign_17_1_5 (.out1(out_conv_out_u_assign_conn_obj_4_ASSIGN_UNSIGNED_FU_u_assign_17_1_5), .in1(out_u_assign_conn_obj_4_ASSIGN_UNSIGNED_FU_u_assign_17));
  UUdata_converter_FU #(.BITSIZE_in1(11), .BITSIZE_out1(32)) conv_out_u_assign_conn_obj_9_ASSIGN_UNSIGNED_FU_u_assign_18_11_32 (.out1(out_conv_out_u_assign_conn_obj_9_ASSIGN_UNSIGNED_FU_u_assign_18_11_32), .in1(out_u_assign_conn_obj_9_ASSIGN_UNSIGNED_FU_u_assign_18));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(11)) conv_out_ui_pointer_plus_expr_FU_32_32_32_125_i0_fu_dijkstraF_28863_29505_32_11 (.out1(out_conv_out_ui_pointer_plus_expr_FU_32_32_32_125_i0_fu_dijkstraF_28863_29505_32_11), .in1(out_ui_pointer_plus_expr_FU_32_32_32_125_i0_fu_dijkstraF_28863_29505));
  ui_lshift_expr_FU #(.BITSIZE_in1(7), .BITSIZE_in2(1), .BITSIZE_out1(8), .PRECISION(8)) fu_dijkstraF_28863_29108 (.out1(out_ui_lshift_expr_FU_8_0_8_109_i0_fu_dijkstraF_28863_29108), .in1(out_conv_out_reg_6_reg_6_8_7), .in2(out_const_4));
  ui_plus_expr_FU #(.BITSIZE_in1(3), .BITSIZE_in2(1), .BITSIZE_out1(3)) fu_dijkstraF_28863_29109 (.out1(out_ui_plus_expr_FU_8_0_8_120_i0_fu_dijkstraF_28863_29109), .in1(out_reg_0_reg_0), .in2(out_const_4));
  read_cond_FU #(.BITSIZE_in1(1)) fu_dijkstraF_28863_29110 (.out1(out_read_cond_FU_12_i0_fu_dijkstraF_28863_29110), .in1(out_ui_ne_expr_FU_8_0_8_112_i0_fu_dijkstraF_28863_29711));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_dijkstraF_28863_29130 (.out1(out_UIdata_converter_FU_13_i0_fu_dijkstraF_28863_29130), .in1(out_reg_6_reg_6));
  bit_ior_concat_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_in3(2), .BITSIZE_out1(8), .OFFSET_PARAMETER(1)) fu_dijkstraF_28863_29131 (.out1(out_bit_ior_concat_expr_FU_86_i0_fu_dijkstraF_28863_29131), .in1(out_lshift_expr_FU_8_0_8_89_i0_fu_dijkstraF_28863_29756), .in2(out_const_2), .in3(out_const_2));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_dijkstraF_28863_29132 (.out1(out_IUdata_converter_FU_14_i0_fu_dijkstraF_28863_29132), .in1(out_bit_ior_concat_expr_FU_86_i0_fu_dijkstraF_28863_29131));
  UUdata_converter_FU #(.BITSIZE_in1(11), .BITSIZE_out1(11)) fu_dijkstraF_28863_29133 (.out1(out_UUdata_converter_FU_3_i0_fu_dijkstraF_28863_29133), .in1(out_conv_in_port_a_32_11));
  read_cond_FU #(.BITSIZE_in1(1)) fu_dijkstraF_28863_29159 (.out1(out_read_cond_FU_25_i0_fu_dijkstraF_28863_29159), .in1(out_lt_expr_FU_8_0_8_91_i0_fu_dijkstraF_28863_29502));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_dijkstraF_28863_29177 (.out1(out_UUdata_converter_FU_40_i0_fu_dijkstraF_28863_29177), .in1(out_reg_14_reg_14));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_dijkstraF_28863_29188 (.out1(out_UIdata_converter_FU_22_i0_fu_dijkstraF_28863_29188), .in1(out_ui_negate_expr_FU_8_8_116_i0_fu_dijkstraF_28863_29192));
  ui_negate_expr_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_dijkstraF_28863_29192 (.out1(out_ui_negate_expr_FU_8_8_116_i0_fu_dijkstraF_28863_29192), .in1(out_IUdata_converter_FU_21_i0_fu_dijkstraF_28863_29199));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_dijkstraF_28863_29199 (.out1(out_IUdata_converter_FU_21_i0_fu_dijkstraF_28863_29199), .in1(out_BMEMORY_CTRLN_85_i0_BMEMORY_CTRLN_85_i0));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_dijkstraF_28863_29210 (.out1(out_UUdata_converter_FU_24_i0_fu_dijkstraF_28863_29210), .in1(out_reg_17_reg_17));
  ui_plus_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(1), .BITSIZE_out1(5)) fu_dijkstraF_28863_29222 (.out1(out_ui_plus_expr_FU_8_0_8_121_i0_fu_dijkstraF_28863_29222), .in1(out_reg_16_reg_16), .in2(out_const_4));
  ui_bit_ior_concat_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(1), .BITSIZE_in3(1), .BITSIZE_out1(32), .OFFSET_PARAMETER(1)) fu_dijkstraF_28863_29227 (.out1(out_ui_bit_ior_concat_expr_FU_101_i0_fu_dijkstraF_28863_29227), .in1(out_ui_lshift_expr_FU_32_0_32_108_i0_fu_dijkstraF_28863_29769), .in2(out_ui_bit_and_expr_FU_1_0_1_99_i0_fu_dijkstraF_28863_29772), .in3(out_const_4));
  ui_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(1), .BITSIZE_out1(32)) fu_dijkstraF_28863_29233 (.out1(out_ui_plus_expr_FU_32_0_32_117_i0_fu_dijkstraF_28863_29233), .in1(out_reg_11_reg_11), .in2(out_const_4));
  UUdata_converter_FU #(.BITSIZE_in1(5), .BITSIZE_out1(5)) fu_dijkstraF_28863_29237 (.out1(out_UUdata_converter_FU_23_i0_fu_dijkstraF_28863_29237), .in1(out_reg_16_reg_16));
  read_cond_FU #(.BITSIZE_in1(1)) fu_dijkstraF_28863_29238 (.out1(out_read_cond_FU_28_i0_fu_dijkstraF_28863_29238), .in1(out_reg_19_reg_19));
  ui_plus_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(1), .BITSIZE_out1(5)) fu_dijkstraF_28863_29248 (.out1(out_ui_plus_expr_FU_8_0_8_120_i1_fu_dijkstraF_28863_29248), .in1(out_reg_9_reg_9), .in2(out_const_4));
  read_cond_FU #(.BITSIZE_in1(1)) fu_dijkstraF_28863_29252 (.out1(out_read_cond_FU_31_i0_fu_dijkstraF_28863_29252), .in1(out_ne_expr_FU_8_8_8_93_i0_fu_dijkstraF_28863_29715));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_dijkstraF_28863_29260 (.out1(out_UUdata_converter_FU_5_i0_fu_dijkstraF_28863_29260), .in1(out_addr_expr_FU_4_i0_fu_dijkstraF_28863_29534));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_dijkstraF_28863_29261 (.out1(out_UUdata_converter_FU_6_i0_fu_dijkstraF_28863_29261), .in1(out_ui_pointer_plus_expr_FU_32_0_32_124_i0_fu_dijkstraF_28863_29543));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_dijkstraF_28863_29275 (.out1(out_UUdata_converter_FU_42_i0_fu_dijkstraF_28863_29275), .in1(out_reg_24_reg_24));
  ui_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(1), .BITSIZE_out1(32)) fu_dijkstraF_28863_29277 (.out1(out_ui_plus_expr_FU_32_0_32_117_i1_fu_dijkstraF_28863_29277), .in1(out_reg_24_reg_24), .in2(out_const_4));
  read_cond_FU #(.BITSIZE_in1(1)) fu_dijkstraF_28863_29278 (.out1(out_read_cond_FU_43_i0_fu_dijkstraF_28863_29278), .in1(out_ui_ne_expr_FU_32_32_32_111_i0_fu_dijkstraF_28863_29721));
  read_cond_FU #(.BITSIZE_in1(1)) fu_dijkstraF_28863_29298 (.out1(out_read_cond_FU_47_i0_fu_dijkstraF_28863_29298), .in1(out_eq_expr_FU_8_0_8_87_i0_fu_dijkstraF_28863_29723));
  UUdata_converter_FU #(.BITSIZE_in1(5), .BITSIZE_out1(5)) fu_dijkstraF_28863_29309 (.out1(out_UUdata_converter_FU_64_i0_fu_dijkstraF_28863_29309), .in1(out_reg_29_reg_29));
  ui_plus_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(1), .BITSIZE_out1(5)) fu_dijkstraF_28863_29315 (.out1(out_ui_plus_expr_FU_8_0_8_121_i1_fu_dijkstraF_28863_29315), .in1(out_reg_29_reg_29), .in2(out_const_4));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(11), .BITSIZE_in2(10), .BITSIZE_out1(12), .LSB_PARAMETER(0)) fu_dijkstraF_28863_29330 (.out1(out_ui_pointer_plus_expr_FU_16_16_16_123_i0_fu_dijkstraF_28863_29330), .in1(out_conv_in_port_a_32_11), .in2(out_ui_lshift_expr_FU_16_0_16_107_i1_fu_dijkstraF_28863_29640));
  UUdata_converter_FU #(.BITSIZE_in1(5), .BITSIZE_out1(5)) fu_dijkstraF_28863_29341 (.out1(out_UUdata_converter_FU_73_i0_fu_dijkstraF_28863_29341), .in1(out_reg_27_reg_27));
  UIdata_converter_FU #(.BITSIZE_in1(5), .BITSIZE_out1(6)) fu_dijkstraF_28863_29346 (.out1(out_UIdata_converter_FU_74_i0_fu_dijkstraF_28863_29346), .in1(out_reg_27_reg_27));
  ui_plus_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(1), .BITSIZE_out1(5)) fu_dijkstraF_28863_29358 (.out1(out_ui_plus_expr_FU_8_0_8_121_i2_fu_dijkstraF_28863_29358), .in1(out_reg_38_reg_38), .in2(out_const_4));
  plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) fu_dijkstraF_28863_29361 (.out1(out_plus_expr_FU_8_8_8_95_i0_fu_dijkstraF_28863_29361), .in1(out_reg_43_reg_43), .in2(out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_array_28859_0));
  ui_plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(8)) fu_dijkstraF_28863_29375 (.out1(out_ui_plus_expr_FU_8_0_8_120_i2_fu_dijkstraF_28863_29375), .in1(out_reg_25_reg_25), .in2(out_const_4));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_dijkstraF_28863_29376 (.out1(out_UUdata_converter_FU_52_i0_fu_dijkstraF_28863_29376), .in1(out_ui_plus_expr_FU_8_0_8_120_i2_fu_dijkstraF_28863_29375));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(11), .BITSIZE_in2(13), .BITSIZE_out1(14), .LSB_PARAMETER(0)) fu_dijkstraF_28863_29378 (.out1(out_ui_pointer_plus_expr_FU_16_16_16_123_i1_fu_dijkstraF_28863_29378), .in1(out_conv_in_port_a_32_11), .in2(out_ui_lshift_expr_FU_16_0_16_107_i0_fu_dijkstraF_28863_29598));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) fu_dijkstraF_28863_29379 (.out1(out_UIdata_converter_FU_53_i0_fu_dijkstraF_28863_29379), .in1(out_ui_plus_expr_FU_8_0_8_120_i2_fu_dijkstraF_28863_29375));
  read_cond_FU #(.BITSIZE_in1(1)) fu_dijkstraF_28863_29381 (.out1(out_read_cond_FU_56_i0_fu_dijkstraF_28863_29381), .in1(out_eq_expr_FU_8_0_8_87_i1_fu_dijkstraF_28863_29725));
  read_cond_FU #(.BITSIZE_in1(1)) fu_dijkstraF_28863_29398 (.out1(out_read_cond_FU_57_i0_fu_dijkstraF_28863_29398), .in1(out_ui_eq_expr_FU_8_0_8_104_i0_fu_dijkstraF_28863_29727));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_dijkstraF_28863_29407 (.out1(out_UUdata_converter_FU_65_i0_fu_dijkstraF_28863_29407), .in1(out_reg_30_reg_30));
  read_cond_FU #(.BITSIZE_in1(1)) fu_dijkstraF_28863_29409 (.out1(out_read_cond_FU_67_i0_fu_dijkstraF_28863_29409), .in1(out_eq_expr_FU_8_0_8_88_i0_fu_dijkstraF_28863_29729));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_dijkstraF_28863_29414 (.out1(out_IUdata_converter_FU_70_i0_fu_dijkstraF_28863_29414), .in1(out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_array_28859_0));
  ui_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(5), .BITSIZE_out1(32)) fu_dijkstraF_28863_29424 (.out1(out_ui_plus_expr_FU_32_0_32_118_i0_fu_dijkstraF_28863_29424), .in1(out_reg_30_reg_30), .in2(out_const_7));
  IIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_dijkstraF_28863_29432 (.out1(out_IIdata_converter_FU_69_i0_fu_dijkstraF_28863_29432), .in1(out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_array_28859_0));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) fu_dijkstraF_28863_29433 (.out1(out_UIdata_converter_FU_66_i0_fu_dijkstraF_28863_29433), .in1(out_reg_34_reg_34));
  read_cond_FU #(.BITSIZE_in1(1)) fu_dijkstraF_28863_29442 (.out1(out_read_cond_FU_72_i0_fu_dijkstraF_28863_29442), .in1(out_reg_33_reg_33));
  UUdata_converter_FU #(.BITSIZE_in1(5), .BITSIZE_out1(5)) fu_dijkstraF_28863_29444 (.out1(out_UUdata_converter_FU_80_i0_fu_dijkstraF_28863_29444), .in1(out_reg_38_reg_38));
  read_cond_FU #(.BITSIZE_in1(1)) fu_dijkstraF_28863_29445 (.out1(out_read_cond_FU_81_i0_fu_dijkstraF_28863_29445), .in1(out_ui_ne_expr_FU_8_8_8_115_i0_fu_dijkstraF_28863_29735));
  read_cond_FU #(.BITSIZE_in1(1)) fu_dijkstraF_28863_29450 (.out1(out_read_cond_FU_83_i0_fu_dijkstraF_28863_29450), .in1(out_lt_expr_FU_8_8_8_92_i0_fu_dijkstraF_28863_29737));
  read_cond_FU #(.BITSIZE_in1(1)) fu_dijkstraF_28863_29455 (.out1(out_read_cond_FU_84_i0_fu_dijkstraF_28863_29455), .in1(out_reg_42_reg_42));
  lt_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_dijkstraF_28863_29502 (.out1(out_lt_expr_FU_8_0_8_91_i0_fu_dijkstraF_28863_29502), .in1(out_BMEMORY_CTRLN_85_i0_BMEMORY_CTRLN_85_i0), .in2(out_const_0));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(5), .BITSIZE_out1(32), .LSB_PARAMETER(0)) fu_dijkstraF_28863_29505 (.out1(out_ui_pointer_plus_expr_FU_32_32_32_125_i0_fu_dijkstraF_28863_29505), .in1(out_reg_10_reg_10), .in2(out_reg_16_reg_16));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_dijkstraF_28863_29534 (.out1(out_addr_expr_FU_4_i0_fu_dijkstraF_28863_29534), .in1(out_conv_out_const_8_11_32));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(5), .BITSIZE_out1(32), .LSB_PARAMETER(0)) fu_dijkstraF_28863_29543 (.out1(out_ui_pointer_plus_expr_FU_32_0_32_124_i0_fu_dijkstraF_28863_29543), .in1(out_addr_expr_FU_4_i0_fu_dijkstraF_28863_29534), .in2(out_const_6));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_dijkstraF_28863_29552 (.out1(out_UUdata_converter_FU_8_i0_fu_dijkstraF_28863_29552), .in1(out_addr_expr_FU_7_i0_fu_dijkstraF_28863_29568));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_dijkstraF_28863_29568 (.out1(out_addr_expr_FU_7_i0_fu_dijkstraF_28863_29568), .in1(out_conv_out_const_8_11_32));
  UUdata_converter_FU #(.BITSIZE_in1(11), .BITSIZE_out1(11)) fu_dijkstraF_28863_29572 (.out1(out_UUdata_converter_FU_9_i0_fu_dijkstraF_28863_29572), .in1(out_conv_in_port_a_32_11));
  ui_lshift_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(11), .PRECISION(32)) fu_dijkstraF_28863_29591 (.out1(out_ui_lshift_expr_FU_16_0_16_106_i0_fu_dijkstraF_28863_29591), .in1(out_UUdata_converter_FU_52_i0_fu_dijkstraF_28863_29376), .in2(out_const_9));
  ui_bit_ior_concat_expr_FU #(.BITSIZE_in1(12), .BITSIZE_in2(3), .BITSIZE_in3(2), .BITSIZE_out1(12), .OFFSET_PARAMETER(3)) fu_dijkstraF_28863_29594 (.out1(out_ui_bit_ior_concat_expr_FU_102_i0_fu_dijkstraF_28863_29594), .in1(out_ui_lshift_expr_FU_16_0_16_106_i1_fu_dijkstraF_28863_29797), .in2(out_ui_bit_and_expr_FU_8_0_8_100_i0_fu_dijkstraF_28863_29802), .in3(out_const_9));
  ui_lshift_expr_FU #(.BITSIZE_in1(12), .BITSIZE_in2(1), .BITSIZE_out1(13), .PRECISION(32)) fu_dijkstraF_28863_29598 (.out1(out_ui_lshift_expr_FU_16_0_16_107_i0_fu_dijkstraF_28863_29598), .in1(out_ui_bit_ior_concat_expr_FU_102_i0_fu_dijkstraF_28863_29594), .in2(out_const_4));
  UUdata_converter_FU #(.BITSIZE_in1(14), .BITSIZE_out1(14)) fu_dijkstraF_28863_29601 (.out1(out_UUdata_converter_FU_54_i0_fu_dijkstraF_28863_29601), .in1(out_ui_pointer_plus_expr_FU_16_16_16_123_i1_fu_dijkstraF_28863_29378));
  IUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(8)) fu_dijkstraF_28863_29604 (.out1(out_IUdata_converter_FU_55_i0_fu_dijkstraF_28863_29604), .in1(out_UIdata_converter_FU_53_i0_fu_dijkstraF_28863_29379));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(14), .BITSIZE_in2(8), .BITSIZE_out1(15), .LSB_PARAMETER(0)) fu_dijkstraF_28863_29610 (.out1(out_ui_pointer_plus_expr_FU_16_16_16_123_i2_fu_dijkstraF_28863_29610), .in1(out_UUdata_converter_FU_54_i0_fu_dijkstraF_28863_29601), .in2(out_IUdata_converter_FU_55_i0_fu_dijkstraF_28863_29604));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(5), .BITSIZE_out1(32), .LSB_PARAMETER(0)) fu_dijkstraF_28863_29630 (.out1(out_ui_pointer_plus_expr_FU_32_32_32_125_i1_fu_dijkstraF_28863_29630), .in1(out_reg_3_reg_3), .in2(out_reg_29_reg_29));
  ui_lshift_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(2), .BITSIZE_out1(8), .PRECISION(32)) fu_dijkstraF_28863_29634 (.out1(out_ui_lshift_expr_FU_8_0_8_110_i0_fu_dijkstraF_28863_29634), .in1(out_UUdata_converter_FU_73_i0_fu_dijkstraF_28863_29341), .in2(out_const_9));
  ui_bit_ior_concat_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(3), .BITSIZE_in3(2), .BITSIZE_out1(9), .OFFSET_PARAMETER(3)) fu_dijkstraF_28863_29637 (.out1(out_ui_bit_ior_concat_expr_FU_102_i1_fu_dijkstraF_28863_29637), .in1(out_ui_lshift_expr_FU_16_0_16_106_i2_fu_dijkstraF_28863_29816), .in2(out_ui_bit_and_expr_FU_8_0_8_100_i1_fu_dijkstraF_28863_29819), .in3(out_const_9));
  ui_lshift_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(1), .BITSIZE_out1(10), .PRECISION(32)) fu_dijkstraF_28863_29640 (.out1(out_ui_lshift_expr_FU_16_0_16_107_i1_fu_dijkstraF_28863_29640), .in1(out_ui_bit_ior_concat_expr_FU_102_i1_fu_dijkstraF_28863_29637), .in2(out_const_4));
  UUdata_converter_FU #(.BITSIZE_in1(12), .BITSIZE_out1(12)) fu_dijkstraF_28863_29643 (.out1(out_UUdata_converter_FU_75_i0_fu_dijkstraF_28863_29643), .in1(out_ui_pointer_plus_expr_FU_16_16_16_123_i0_fu_dijkstraF_28863_29330));
  IUdata_converter_FU #(.BITSIZE_in1(6), .BITSIZE_out1(5)) fu_dijkstraF_28863_29646 (.out1(out_IUdata_converter_FU_76_i0_fu_dijkstraF_28863_29646), .in1(out_UIdata_converter_FU_74_i0_fu_dijkstraF_28863_29346));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(12), .BITSIZE_in2(5), .BITSIZE_out1(13), .LSB_PARAMETER(0)) fu_dijkstraF_28863_29652 (.out1(out_ui_pointer_plus_expr_FU_16_16_16_123_i3_fu_dijkstraF_28863_29652), .in1(out_UUdata_converter_FU_75_i0_fu_dijkstraF_28863_29643), .in2(out_IUdata_converter_FU_76_i0_fu_dijkstraF_28863_29646));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(5), .BITSIZE_out1(32), .LSB_PARAMETER(0)) fu_dijkstraF_28863_29669 (.out1(out_ui_pointer_plus_expr_FU_32_32_32_125_i2_fu_dijkstraF_28863_29669), .in1(out_reg_4_reg_4), .in2(out_reg_36_reg_36));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(12), .BITSIZE_in2(5), .BITSIZE_out1(13), .LSB_PARAMETER(0)) fu_dijkstraF_28863_29685 (.out1(out_ui_pointer_plus_expr_FU_16_16_16_123_i4_fu_dijkstraF_28863_29685), .in1(out_reg_35_reg_35), .in2(out_reg_38_reg_38));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(5), .BITSIZE_out1(32), .LSB_PARAMETER(0)) fu_dijkstraF_28863_29692 (.out1(out_ui_pointer_plus_expr_FU_32_32_32_125_i3_fu_dijkstraF_28863_29692), .in1(out_reg_3_reg_3), .in2(out_reg_38_reg_38));
  ui_ne_expr_FU #(.BITSIZE_in1(3), .BITSIZE_in2(3), .BITSIZE_out1(1)) fu_dijkstraF_28863_29711 (.out1(out_ui_ne_expr_FU_8_0_8_112_i0_fu_dijkstraF_28863_29711), .in1(out_ui_plus_expr_FU_8_0_8_120_i0_fu_dijkstraF_28863_29109), .in2(out_const_10));
  ui_eq_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(5), .BITSIZE_out1(1)) fu_dijkstraF_28863_29713 (.out1(out_ui_eq_expr_FU_8_8_8_105_i0_fu_dijkstraF_28863_29713), .in1(out_reg_9_reg_9), .in2(out_UUdata_converter_FU_23_i0_fu_dijkstraF_28863_29237));
  ne_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(1)) fu_dijkstraF_28863_29715 (.out1(out_ne_expr_FU_8_8_8_93_i0_fu_dijkstraF_28863_29715), .in1(out_BMEMORY_CTRLN_85_i0_BMEMORY_CTRLN_85_i0), .in2(out_reg_23_reg_23));
  ui_ne_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(5), .BITSIZE_out1(1)) fu_dijkstraF_28863_29717 (.out1(out_ui_ne_expr_FU_8_0_8_113_i0_fu_dijkstraF_28863_29717), .in1(out_ui_plus_expr_FU_8_0_8_121_i0_fu_dijkstraF_28863_29222), .in2(out_const_6));
  ui_ne_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(5), .BITSIZE_out1(1)) fu_dijkstraF_28863_29719 (.out1(out_ui_ne_expr_FU_8_0_8_114_i0_fu_dijkstraF_28863_29719), .in1(out_ui_plus_expr_FU_8_0_8_120_i1_fu_dijkstraF_28863_29248), .in2(out_const_6));
  ui_ne_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(32), .BITSIZE_out1(1)) fu_dijkstraF_28863_29721 (.out1(out_ui_ne_expr_FU_32_32_32_111_i0_fu_dijkstraF_28863_29721), .in1(out_ui_plus_expr_FU_32_0_32_117_i1_fu_dijkstraF_28863_29277), .in2(out_reg_2_reg_2));
  eq_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(1)) fu_dijkstraF_28863_29723 (.out1(out_eq_expr_FU_8_0_8_87_i0_fu_dijkstraF_28863_29723), .in1(out_BMEMORY_CTRLN_85_i0_BMEMORY_CTRLN_85_i0), .in2(out_const_9));
  eq_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(1)) fu_dijkstraF_28863_29725 (.out1(out_eq_expr_FU_8_0_8_87_i1_fu_dijkstraF_28863_29725), .in1(out_BMEMORY_CTRLN_85_i0_BMEMORY_CTRLN_85_i0), .in2(out_const_9));
  ui_eq_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(5), .BITSIZE_out1(1)) fu_dijkstraF_28863_29727 (.out1(out_ui_eq_expr_FU_8_0_8_104_i0_fu_dijkstraF_28863_29727), .in1(out_reg_25_reg_25), .in2(out_const_6));
  eq_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_dijkstraF_28863_29729 (.out1(out_eq_expr_FU_8_0_8_88_i0_fu_dijkstraF_28863_29729), .in1(out_BMEMORY_CTRLN_85_i0_BMEMORY_CTRLN_85_i0), .in2(out_const_0));
  lt_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(9), .BITSIZE_out1(1)) fu_dijkstraF_28863_29731 (.out1(out_lt_expr_FU_16_16_16_90_i0_fu_dijkstraF_28863_29731), .in1(out_IIdata_converter_FU_69_i0_fu_dijkstraF_28863_29432), .in2(out_reg_31_reg_31));
  ui_ne_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(5), .BITSIZE_out1(1)) fu_dijkstraF_28863_29733 (.out1(out_ui_ne_expr_FU_8_0_8_113_i1_fu_dijkstraF_28863_29733), .in1(out_ui_plus_expr_FU_8_0_8_121_i1_fu_dijkstraF_28863_29315), .in2(out_const_6));
  ui_ne_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(5), .BITSIZE_out1(1)) fu_dijkstraF_28863_29735 (.out1(out_ui_ne_expr_FU_8_8_8_115_i0_fu_dijkstraF_28863_29735), .in1(out_UUdata_converter_FU_80_i0_fu_dijkstraF_28863_29444), .in2(out_reg_27_reg_27));
  lt_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(1)) fu_dijkstraF_28863_29737 (.out1(out_lt_expr_FU_8_8_8_92_i0_fu_dijkstraF_28863_29737), .in1(out_plus_expr_FU_8_8_8_95_i0_fu_dijkstraF_28863_29361), .in2(out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_array_28859_0));
  ui_ne_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(5), .BITSIZE_out1(1)) fu_dijkstraF_28863_29739 (.out1(out_ui_ne_expr_FU_8_0_8_113_i2_fu_dijkstraF_28863_29739), .in1(out_ui_plus_expr_FU_8_0_8_121_i2_fu_dijkstraF_28863_29358), .in2(out_const_6));
  rshift_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(7), .PRECISION(8)) fu_dijkstraF_28863_29748 (.out1(out_rshift_expr_FU_8_0_8_96_i0_fu_dijkstraF_28863_29748), .in1(out_UIdata_converter_FU_13_i0_fu_dijkstraF_28863_29130), .in2(out_const_2));
  plus_expr_FU #(.BITSIZE_in1(7), .BITSIZE_in2(2), .BITSIZE_out1(7)) fu_dijkstraF_28863_29753 (.out1(out_plus_expr_FU_8_0_8_94_i0_fu_dijkstraF_28863_29753), .in1(out_rshift_expr_FU_8_0_8_96_i0_fu_dijkstraF_28863_29748), .in2(out_const_9));
  lshift_expr_FU #(.BITSIZE_in1(7), .BITSIZE_in2(2), .BITSIZE_out1(8), .PRECISION(8)) fu_dijkstraF_28863_29756 (.out1(out_lshift_expr_FU_8_0_8_89_i0_fu_dijkstraF_28863_29756), .in1(out_plus_expr_FU_8_0_8_94_i0_fu_dijkstraF_28863_29753), .in2(out_const_2));
  ui_rshift_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(1), .BITSIZE_out1(31), .PRECISION(32)) fu_dijkstraF_28863_29761 (.out1(out_ui_rshift_expr_FU_32_0_32_127_i0_fu_dijkstraF_28863_29761), .in1(out_reg_17_reg_17), .in2(out_const_4));
  ui_plus_expr_FU #(.BITSIZE_in1(31), .BITSIZE_in2(4), .BITSIZE_out1(31)) fu_dijkstraF_28863_29766 (.out1(out_ui_plus_expr_FU_32_0_32_119_i0_fu_dijkstraF_28863_29766), .in1(out_ui_rshift_expr_FU_32_0_32_127_i0_fu_dijkstraF_28863_29761), .in2(out_const_5));
  ui_lshift_expr_FU #(.BITSIZE_in1(31), .BITSIZE_in2(1), .BITSIZE_out1(32), .PRECISION(32)) fu_dijkstraF_28863_29769 (.out1(out_ui_lshift_expr_FU_32_0_32_108_i0_fu_dijkstraF_28863_29769), .in1(out_ui_plus_expr_FU_32_0_32_119_i0_fu_dijkstraF_28863_29766), .in2(out_const_4));
  ui_bit_and_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_dijkstraF_28863_29772 (.out1(out_ui_bit_and_expr_FU_1_0_1_99_i0_fu_dijkstraF_28863_29772), .in1(out_reg_17_reg_17), .in2(out_const_4));
  ui_rshift_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(1), .BITSIZE_out1(31), .PRECISION(32)) fu_dijkstraF_28863_29777 (.out1(out_ui_rshift_expr_FU_32_0_32_127_i1_fu_dijkstraF_28863_29777), .in1(out_reg_14_reg_14), .in2(out_const_4));
  ui_plus_expr_FU #(.BITSIZE_in1(31), .BITSIZE_in2(4), .BITSIZE_out1(31)) fu_dijkstraF_28863_29779 (.out1(out_ui_plus_expr_FU_32_0_32_119_i1_fu_dijkstraF_28863_29779), .in1(out_ui_rshift_expr_FU_32_0_32_127_i1_fu_dijkstraF_28863_29777), .in2(out_const_5));
  ui_lshift_expr_FU #(.BITSIZE_in1(31), .BITSIZE_in2(1), .BITSIZE_out1(32), .PRECISION(32)) fu_dijkstraF_28863_29782 (.out1(out_ui_lshift_expr_FU_32_0_32_108_i1_fu_dijkstraF_28863_29782), .in1(out_ui_plus_expr_FU_32_0_32_119_i1_fu_dijkstraF_28863_29779), .in2(out_const_4));
  ui_rshift_expr_FU #(.BITSIZE_in1(11), .BITSIZE_in2(2), .BITSIZE_out1(8), .PRECISION(32)) fu_dijkstraF_28863_29786 (.out1(out_ui_rshift_expr_FU_16_0_16_126_i0_fu_dijkstraF_28863_29786), .in1(out_ui_lshift_expr_FU_16_0_16_106_i0_fu_dijkstraF_28863_29591), .in2(out_const_9));
  ui_rshift_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(5), .PRECISION(32)) fu_dijkstraF_28863_29790 (.out1(out_ui_rshift_expr_FU_8_0_8_128_i0_fu_dijkstraF_28863_29790), .in1(out_UUdata_converter_FU_52_i0_fu_dijkstraF_28863_29376), .in2(out_const_9));
  ui_plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(5), .BITSIZE_out1(9)) fu_dijkstraF_28863_29793 (.out1(out_ui_plus_expr_FU_8_8_8_122_i0_fu_dijkstraF_28863_29793), .in1(out_ui_rshift_expr_FU_16_0_16_126_i0_fu_dijkstraF_28863_29786), .in2(out_ui_rshift_expr_FU_8_0_8_128_i0_fu_dijkstraF_28863_29790));
  ui_lshift_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(2), .BITSIZE_out1(12), .PRECISION(32)) fu_dijkstraF_28863_29797 (.out1(out_ui_lshift_expr_FU_16_0_16_106_i1_fu_dijkstraF_28863_29797), .in1(out_ui_plus_expr_FU_8_8_8_122_i0_fu_dijkstraF_28863_29793), .in2(out_const_9));
  ui_bit_and_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(3), .BITSIZE_out1(3)) fu_dijkstraF_28863_29802 (.out1(out_ui_bit_and_expr_FU_8_0_8_100_i0_fu_dijkstraF_28863_29802), .in1(out_UUdata_converter_FU_52_i0_fu_dijkstraF_28863_29376), .in2(out_const_10));
  ui_rshift_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(5), .PRECISION(32)) fu_dijkstraF_28863_29807 (.out1(out_ui_rshift_expr_FU_8_0_8_128_i1_fu_dijkstraF_28863_29807), .in1(out_ui_lshift_expr_FU_8_0_8_110_i0_fu_dijkstraF_28863_29634), .in2(out_const_9));
  ui_rshift_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(2), .BITSIZE_out1(2), .PRECISION(32)) fu_dijkstraF_28863_29810 (.out1(out_ui_rshift_expr_FU_8_0_8_128_i2_fu_dijkstraF_28863_29810), .in1(out_UUdata_converter_FU_73_i0_fu_dijkstraF_28863_29341), .in2(out_const_9));
  ui_plus_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(2), .BITSIZE_out1(6)) fu_dijkstraF_28863_29812 (.out1(out_ui_plus_expr_FU_8_8_8_122_i1_fu_dijkstraF_28863_29812), .in1(out_ui_rshift_expr_FU_8_0_8_128_i1_fu_dijkstraF_28863_29807), .in2(out_ui_rshift_expr_FU_8_0_8_128_i2_fu_dijkstraF_28863_29810));
  ui_lshift_expr_FU #(.BITSIZE_in1(6), .BITSIZE_in2(2), .BITSIZE_out1(9), .PRECISION(32)) fu_dijkstraF_28863_29816 (.out1(out_ui_lshift_expr_FU_16_0_16_106_i2_fu_dijkstraF_28863_29816), .in1(out_ui_plus_expr_FU_8_8_8_122_i1_fu_dijkstraF_28863_29812), .in2(out_const_9));
  ui_bit_and_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(3), .BITSIZE_out1(3)) fu_dijkstraF_28863_29819 (.out1(out_ui_bit_and_expr_FU_8_0_8_100_i1_fu_dijkstraF_28863_29819), .in1(out_UUdata_converter_FU_73_i0_fu_dijkstraF_28863_29341), .in2(out_const_10));
  multi_read_cond_FU #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) fu_dijkstraF_28863_29821 (.out1(out_multi_read_cond_FU_33_i0_fu_dijkstraF_28863_29821), .in1({out_reg_21_reg_21, out_reg_20_reg_20}));
  truth_not_expr_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) fu_dijkstraF_28863_29824 (.out1(out_truth_not_expr_FU_1_1_98_i0_fu_dijkstraF_28863_29824), .in1(out_ui_ne_expr_FU_8_0_8_113_i0_fu_dijkstraF_28863_29717));
  truth_and_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_dijkstraF_28863_29827 (.out1(out_truth_and_expr_FU_1_1_1_97_i0_fu_dijkstraF_28863_29827), .in1(out_reg_13_reg_13), .in2(out_truth_not_expr_FU_1_1_98_i0_fu_dijkstraF_28863_29824));
  ui_cond_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(8), .BITSIZE_in3(8), .BITSIZE_out1(8)) fu_dijkstraF_28863_29828 (.out1(out_ui_cond_expr_FU_8_8_8_8_103_i0_fu_dijkstraF_28863_29828), .in1(out_lt_expr_FU_16_16_16_90_i0_fu_dijkstraF_28863_29731), .in2(out_IUdata_converter_FU_70_i0_fu_dijkstraF_28863_29414), .in3(out_reg_34_reg_34));
  ui_cond_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(5), .BITSIZE_in3(5), .BITSIZE_out1(5)) fu_dijkstraF_28863_29831 (.out1(out_ui_cond_expr_FU_8_8_8_8_103_i1_fu_dijkstraF_28863_29831), .in1(out_lt_expr_FU_16_16_16_90_i0_fu_dijkstraF_28863_29731), .in2(out_reg_28_reg_28), .in3(out_reg_27_reg_27));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerMout_Wdata_ram0_0 (.out1(sig_in_bus_mergerMout_Wdata_ram0_0), .in1(sig_in_vector_bus_mergerMout_Wdata_ram0_0));
  join_signal #(.BITSIZE_in1(11), .PORTSIZE_in1(2), .BITSIZE_out1(22)) join_signalbus_mergerMout_addr_ram1_0 (.out1(sig_in_bus_mergerMout_addr_ram1_0), .in1(sig_in_vector_bus_mergerMout_addr_ram1_0));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerMout_data_ram_size2_0 (.out1(sig_in_bus_mergerMout_data_ram_size2_0), .in1(sig_in_vector_bus_mergerMout_data_ram_size2_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerMout_oe_ram3_0 (.out1(sig_in_bus_mergerMout_oe_ram3_0), .in1(sig_in_vector_bus_mergerMout_oe_ram3_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerMout_we_ram4_0 (.out1(sig_in_bus_mergerMout_we_ram4_0), .in1(sig_in_vector_bus_mergerMout_we_ram4_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerSout_DataRdy5_0 (.out1(sig_in_bus_mergerSout_DataRdy5_0), .in1(sig_in_vector_bus_mergerSout_DataRdy5_0));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerSout_Rdata_ram6_0 (.out1(sig_in_bus_mergerSout_Rdata_ram6_0), .in1(sig_in_vector_bus_mergerSout_Rdata_ram6_0));
  register_SE #(.BITSIZE_in1(3), .BITSIZE_out1(3)) reg_0 (.out1(out_reg_0_reg_0), .clock(clock), .reset(reset), .in1(out_MUX_100_reg_0_0_0_0), .wenable(wrenable_reg_0));
  register_SE #(.BITSIZE_in1(11), .BITSIZE_out1(11)) reg_1 (.out1(out_reg_1_reg_1), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_3_i0_fu_dijkstraF_28863_29133), .wenable(wrenable_reg_1));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_10 (.out1(out_reg_10_reg_10), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_40_i0_fu_dijkstraF_28863_29177), .wenable(wrenable_reg_10));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_11 (.out1(out_reg_11_reg_11), .clock(clock), .reset(reset), .in1(out_MUX_103_reg_11_0_0_0), .wenable(wrenable_reg_11));
  register_SE #(.BITSIZE_in1(5), .BITSIZE_out1(5)) reg_12 (.out1(out_reg_12_reg_12), .clock(clock), .reset(reset), .in1(out_ui_plus_expr_FU_8_0_8_120_i1_fu_dijkstraF_28863_29248), .wenable(wrenable_reg_12));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_13 (.out1(out_reg_13_reg_13), .clock(clock), .reset(reset), .in1(out_ui_ne_expr_FU_8_0_8_114_i0_fu_dijkstraF_28863_29719), .wenable(wrenable_reg_13));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_14 (.out1(out_reg_14_reg_14), .clock(clock), .reset(reset), .in1(out_MUX_106_reg_14_0_0_0), .wenable(wrenable_reg_14));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_15 (.out1(out_reg_15_reg_15), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_24_i0_fu_dijkstraF_28863_29210), .wenable(wrenable_reg_15));
  register_SE #(.BITSIZE_in1(5), .BITSIZE_out1(5)) reg_16 (.out1(out_reg_16_reg_16), .clock(clock), .reset(reset), .in1(out_MUX_108_reg_16_0_0_0), .wenable(wrenable_reg_16));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_17 (.out1(out_reg_17_reg_17), .clock(clock), .reset(reset), .in1(out_MUX_109_reg_17_0_0_0), .wenable(wrenable_reg_17));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_18 (.out1(out_reg_18_reg_18), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_32_32_32_125_i0_fu_dijkstraF_28863_29505), .wenable(wrenable_reg_18));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_19 (.out1(out_reg_19_reg_19), .clock(clock), .reset(reset), .in1(out_ui_eq_expr_FU_8_8_8_105_i0_fu_dijkstraF_28863_29713), .wenable(wrenable_reg_19));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_2 (.out1(out_reg_2_reg_2), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_6_i0_fu_dijkstraF_28863_29261), .wenable(wrenable_reg_2));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_20 (.out1(out_reg_20_reg_20), .clock(clock), .reset(reset), .in1(out_ui_ne_expr_FU_8_0_8_113_i0_fu_dijkstraF_28863_29717), .wenable(wrenable_reg_20));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_21 (.out1(out_reg_21_reg_21), .clock(clock), .reset(reset), .in1(out_truth_and_expr_FU_1_1_1_97_i0_fu_dijkstraF_28863_29827), .wenable(wrenable_reg_21));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_22 (.out1(out_reg_22_reg_22), .clock(clock), .reset(reset), .in1(out_MUX_115_reg_22_0_0_0), .wenable(wrenable_reg_22));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_23 (.out1(out_reg_23_reg_23), .clock(clock), .reset(reset), .in1(out_MUX_116_reg_23_0_0_0), .wenable(wrenable_reg_23));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_24 (.out1(out_reg_24_reg_24), .clock(clock), .reset(reset), .in1(out_MUX_117_reg_24_0_0_0), .wenable(wrenable_reg_24));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_25 (.out1(out_reg_25_reg_25), .clock(clock), .reset(reset), .in1(out_MUX_118_reg_25_0_0_0), .wenable(wrenable_reg_25));
  register_STD #(.BITSIZE_in1(15), .BITSIZE_out1(15)) reg_26 (.out1(out_reg_26_reg_26), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_16_16_16_123_i2_fu_dijkstraF_28863_29610), .wenable(wrenable_reg_26));
  register_SE #(.BITSIZE_in1(5), .BITSIZE_out1(5)) reg_27 (.out1(out_reg_27_reg_27), .clock(clock), .reset(reset), .in1(out_MUX_120_reg_27_0_0_0), .wenable(wrenable_reg_27));
  register_SE #(.BITSIZE_in1(5), .BITSIZE_out1(5)) reg_28 (.out1(out_reg_28_reg_28), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_64_i0_fu_dijkstraF_28863_29309), .wenable(wrenable_reg_28));
  register_SE #(.BITSIZE_in1(5), .BITSIZE_out1(5)) reg_29 (.out1(out_reg_29_reg_29), .clock(clock), .reset(reset), .in1(out_MUX_122_reg_29_0_0_0), .wenable(wrenable_reg_29));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_3 (.out1(out_reg_3_reg_3), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_4_i0_fu_dijkstraF_28863_29534), .wenable(wrenable_reg_3));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_30 (.out1(out_reg_30_reg_30), .clock(clock), .reset(reset), .in1(out_MUX_124_reg_30_0_0_0), .wenable(wrenable_reg_30));
  register_SE #(.BITSIZE_in1(9), .BITSIZE_out1(9)) reg_31 (.out1(out_reg_31_reg_31), .clock(clock), .reset(reset), .in1(out_UIdata_converter_FU_66_i0_fu_dijkstraF_28863_29433), .wenable(wrenable_reg_31));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_32 (.out1(out_reg_32_reg_32), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_32_32_32_125_i1_fu_dijkstraF_28863_29630), .wenable(wrenable_reg_32));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_33 (.out1(out_reg_33_reg_33), .clock(clock), .reset(reset), .in1(out_ui_ne_expr_FU_8_0_8_113_i1_fu_dijkstraF_28863_29733), .wenable(wrenable_reg_33));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_34 (.out1(out_reg_34_reg_34), .clock(clock), .reset(reset), .in1(out_MUX_128_reg_34_0_0_0), .wenable(wrenable_reg_34));
  register_SE #(.BITSIZE_in1(12), .BITSIZE_out1(12)) reg_35 (.out1(out_reg_35_reg_35), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_16_16_16_123_i0_fu_dijkstraF_28863_29330), .wenable(wrenable_reg_35));
  register_SE #(.BITSIZE_in1(5), .BITSIZE_out1(5)) reg_36 (.out1(out_reg_36_reg_36), .clock(clock), .reset(reset), .in1(out_IUdata_converter_FU_76_i0_fu_dijkstraF_28863_29646), .wenable(wrenable_reg_36));
  register_STD #(.BITSIZE_in1(13), .BITSIZE_out1(13)) reg_37 (.out1(out_reg_37_reg_37), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_16_16_16_123_i3_fu_dijkstraF_28863_29652), .wenable(wrenable_reg_37));
  register_SE #(.BITSIZE_in1(5), .BITSIZE_out1(5)) reg_38 (.out1(out_reg_38_reg_38), .clock(clock), .reset(reset), .in1(out_MUX_132_reg_38_0_0_0), .wenable(wrenable_reg_38));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_39 (.out1(out_reg_39_reg_39), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_32_32_32_125_i2_fu_dijkstraF_28863_29669), .wenable(wrenable_reg_39));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_4 (.out1(out_reg_4_reg_4), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_8_i0_fu_dijkstraF_28863_29552), .wenable(wrenable_reg_4));
  register_STD #(.BITSIZE_in1(13), .BITSIZE_out1(13)) reg_40 (.out1(out_reg_40_reg_40), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_16_16_16_123_i4_fu_dijkstraF_28863_29685), .wenable(wrenable_reg_40));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_41 (.out1(out_reg_41_reg_41), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_32_32_32_125_i3_fu_dijkstraF_28863_29692), .wenable(wrenable_reg_41));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_42 (.out1(out_reg_42_reg_42), .clock(clock), .reset(reset), .in1(out_ui_ne_expr_FU_8_0_8_113_i2_fu_dijkstraF_28863_29739), .wenable(wrenable_reg_42));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_43 (.out1(out_reg_43_reg_43), .clock(clock), .reset(reset), .in1(out_BMEMORY_CTRLN_85_i0_BMEMORY_CTRLN_85_i0), .wenable(wrenable_reg_43));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_44 (.out1(out_reg_44_reg_44), .clock(clock), .reset(reset), .in1(out_plus_expr_FU_8_8_8_95_i0_fu_dijkstraF_28863_29361), .wenable(wrenable_reg_44));
  register_SE #(.BITSIZE_in1(11), .BITSIZE_out1(11)) reg_5 (.out1(out_reg_5_reg_5), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_9_i0_fu_dijkstraF_28863_29572), .wenable(wrenable_reg_5));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_6 (.out1(out_reg_6_reg_6), .clock(clock), .reset(reset), .in1(out_MUX_141_reg_6_0_0_1), .wenable(wrenable_reg_6));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_7 (.out1(out_reg_7_reg_7), .clock(clock), .reset(reset), .in1(out_bit_ior_concat_expr_FU_86_i0_fu_dijkstraF_28863_29131), .wenable(wrenable_reg_7));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_8 (.out1(out_reg_8_reg_8), .clock(clock), .reset(reset), .in1(out_IUdata_converter_FU_14_i0_fu_dijkstraF_28863_29132), .wenable(wrenable_reg_8));
  register_SE #(.BITSIZE_in1(5), .BITSIZE_out1(5)) reg_9 (.out1(out_reg_9_reg_9), .clock(clock), .reset(reset), .in1(out_MUX_144_reg_9_0_0_0), .wenable(wrenable_reg_9));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerMout_Wdata_ram0_ (.out1(Mout_Wdata_ram), .in1(sig_out_bus_mergerMout_Wdata_ram0_));
  split_signal #(.BITSIZE_in1(22), .BITSIZE_out1(11), .PORTSIZE_out1(2)) split_signalbus_mergerMout_addr_ram1_ (.out1(Mout_addr_ram), .in1(sig_out_bus_mergerMout_addr_ram1_));
  split_signal #(.BITSIZE_in1(8), .BITSIZE_out1(4), .PORTSIZE_out1(2)) split_signalbus_mergerMout_data_ram_size2_ (.out1(Mout_data_ram_size), .in1(sig_out_bus_mergerMout_data_ram_size2_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerMout_oe_ram3_ (.out1(Mout_oe_ram), .in1(sig_out_bus_mergerMout_oe_ram3_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerMout_we_ram4_ (.out1(Mout_we_ram), .in1(sig_out_bus_mergerMout_we_ram4_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerSout_DataRdy5_ (.out1(Sout_DataRdy), .in1(sig_out_bus_mergerSout_DataRdy5_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerSout_Rdata_ram6_ (.out1(Sout_Rdata_ram), .in1(sig_out_bus_mergerSout_Rdata_ram6_));
  // io-signal post fix
  assign OUT_CONDITION_dijkstraF_28863_29110 = out_read_cond_FU_12_i0_fu_dijkstraF_28863_29110;
  assign OUT_CONDITION_dijkstraF_28863_29159 = out_read_cond_FU_25_i0_fu_dijkstraF_28863_29159;
  assign OUT_CONDITION_dijkstraF_28863_29238 = out_read_cond_FU_28_i0_fu_dijkstraF_28863_29238;
  assign OUT_CONDITION_dijkstraF_28863_29252 = out_read_cond_FU_31_i0_fu_dijkstraF_28863_29252;
  assign OUT_CONDITION_dijkstraF_28863_29278 = out_read_cond_FU_43_i0_fu_dijkstraF_28863_29278;
  assign OUT_CONDITION_dijkstraF_28863_29298 = out_read_cond_FU_47_i0_fu_dijkstraF_28863_29298;
  assign OUT_CONDITION_dijkstraF_28863_29381 = out_read_cond_FU_56_i0_fu_dijkstraF_28863_29381;
  assign OUT_CONDITION_dijkstraF_28863_29398 = out_read_cond_FU_57_i0_fu_dijkstraF_28863_29398;
  assign OUT_CONDITION_dijkstraF_28863_29409 = out_read_cond_FU_67_i0_fu_dijkstraF_28863_29409;
  assign OUT_CONDITION_dijkstraF_28863_29442 = out_read_cond_FU_72_i0_fu_dijkstraF_28863_29442;
  assign OUT_CONDITION_dijkstraF_28863_29445 = out_read_cond_FU_81_i0_fu_dijkstraF_28863_29445;
  assign OUT_CONDITION_dijkstraF_28863_29450 = out_read_cond_FU_83_i0_fu_dijkstraF_28863_29450;
  assign OUT_CONDITION_dijkstraF_28863_29455 = out_read_cond_FU_84_i0_fu_dijkstraF_28863_29455;
  assign OUT_MULTIIF_dijkstraF_28863_29821 = out_multi_read_cond_FU_33_i0_fu_dijkstraF_28863_29821;

endmodule

// FSM based controller description for dijkstraF
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module controller_dijkstraF(done_port, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_STORE, fuselector_BMEMORY_CTRLN_85_i0_LOAD, fuselector_BMEMORY_CTRLN_85_i0_STORE, selector_MUX_0_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_0_0_0, selector_MUX_100_reg_0_0_0_0, selector_MUX_103_reg_11_0_0_0, selector_MUX_106_reg_14_0_0_0, selector_MUX_108_reg_16_0_0_0, selector_MUX_109_reg_17_0_0_0, selector_MUX_115_reg_22_0_0_0, selector_MUX_116_reg_23_0_0_0, selector_MUX_117_reg_24_0_0_0, selector_MUX_118_reg_25_0_0_0, selector_MUX_120_reg_27_0_0_0, selector_MUX_122_reg_29_0_0_0, selector_MUX_124_reg_30_0_0_0, selector_MUX_128_reg_34_0_0_0, selector_MUX_132_reg_38_0_0_0, selector_MUX_141_reg_6_0_0_0, selector_MUX_141_reg_6_0_0_1, selector_MUX_144_reg_9_0_0_0, selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0, selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_1_0_0, selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_1_0_1, selector_MUX_8_BMEMORY_CTRLN_85_i0_0_0_0, selector_MUX_8_BMEMORY_CTRLN_85_i0_0_0_1, selector_MUX_8_BMEMORY_CTRLN_85_i0_0_1_0, selector_MUX_9_BMEMORY_CTRLN_85_i0_1_0_0, selector_MUX_9_BMEMORY_CTRLN_85_i0_1_0_1, selector_MUX_9_BMEMORY_CTRLN_85_i0_1_0_2, selector_MUX_9_BMEMORY_CTRLN_85_i0_1_0_3, selector_MUX_9_BMEMORY_CTRLN_85_i0_1_1_0, selector_MUX_9_BMEMORY_CTRLN_85_i0_1_1_1, selector_MUX_9_BMEMORY_CTRLN_85_i0_1_2_0, wrenable_reg_0, wrenable_reg_1, wrenable_reg_10, wrenable_reg_11, wrenable_reg_12, wrenable_reg_13, wrenable_reg_14, wrenable_reg_15, wrenable_reg_16, wrenable_reg_17, wrenable_reg_18, wrenable_reg_19, wrenable_reg_2, wrenable_reg_20, wrenable_reg_21, wrenable_reg_22, wrenable_reg_23, wrenable_reg_24, wrenable_reg_25, wrenable_reg_26, wrenable_reg_27, wrenable_reg_28, wrenable_reg_29, wrenable_reg_3, wrenable_reg_30, wrenable_reg_31, wrenable_reg_32, wrenable_reg_33, wrenable_reg_34, wrenable_reg_35, wrenable_reg_36, wrenable_reg_37, wrenable_reg_38, wrenable_reg_39, wrenable_reg_4, wrenable_reg_40, wrenable_reg_41, wrenable_reg_42, wrenable_reg_43, wrenable_reg_44, wrenable_reg_5, wrenable_reg_6, wrenable_reg_7, wrenable_reg_8, wrenable_reg_9, OUT_CONDITION_dijkstraF_28863_29110, OUT_CONDITION_dijkstraF_28863_29159, OUT_CONDITION_dijkstraF_28863_29238, OUT_CONDITION_dijkstraF_28863_29252, OUT_CONDITION_dijkstraF_28863_29278, OUT_CONDITION_dijkstraF_28863_29298, OUT_CONDITION_dijkstraF_28863_29381, OUT_CONDITION_dijkstraF_28863_29398, OUT_CONDITION_dijkstraF_28863_29409, OUT_CONDITION_dijkstraF_28863_29442, OUT_CONDITION_dijkstraF_28863_29445, OUT_CONDITION_dijkstraF_28863_29450, OUT_CONDITION_dijkstraF_28863_29455, OUT_MULTIIF_dijkstraF_28863_29821, clock, reset, start_port);
  // IN
  input OUT_CONDITION_dijkstraF_28863_29110;
  input OUT_CONDITION_dijkstraF_28863_29159;
  input OUT_CONDITION_dijkstraF_28863_29238;
  input OUT_CONDITION_dijkstraF_28863_29252;
  input OUT_CONDITION_dijkstraF_28863_29278;
  input OUT_CONDITION_dijkstraF_28863_29298;
  input OUT_CONDITION_dijkstraF_28863_29381;
  input OUT_CONDITION_dijkstraF_28863_29398;
  input OUT_CONDITION_dijkstraF_28863_29409;
  input OUT_CONDITION_dijkstraF_28863_29442;
  input OUT_CONDITION_dijkstraF_28863_29445;
  input OUT_CONDITION_dijkstraF_28863_29450;
  input OUT_CONDITION_dijkstraF_28863_29455;
  input [1:0] OUT_MULTIIF_dijkstraF_28863_29821;
  input clock;
  input reset;
  input start_port;
  // OUT
  output done_port;
  output fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD;
  output fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE;
  output fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_LOAD;
  output fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_STORE;
  output fuselector_BMEMORY_CTRLN_85_i0_LOAD;
  output fuselector_BMEMORY_CTRLN_85_i0_STORE;
  output selector_MUX_0_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_0_0_0;
  output selector_MUX_100_reg_0_0_0_0;
  output selector_MUX_103_reg_11_0_0_0;
  output selector_MUX_106_reg_14_0_0_0;
  output selector_MUX_108_reg_16_0_0_0;
  output selector_MUX_109_reg_17_0_0_0;
  output selector_MUX_115_reg_22_0_0_0;
  output selector_MUX_116_reg_23_0_0_0;
  output selector_MUX_117_reg_24_0_0_0;
  output selector_MUX_118_reg_25_0_0_0;
  output selector_MUX_120_reg_27_0_0_0;
  output selector_MUX_122_reg_29_0_0_0;
  output selector_MUX_124_reg_30_0_0_0;
  output selector_MUX_128_reg_34_0_0_0;
  output selector_MUX_132_reg_38_0_0_0;
  output selector_MUX_141_reg_6_0_0_0;
  output selector_MUX_141_reg_6_0_0_1;
  output selector_MUX_144_reg_9_0_0_0;
  output selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0;
  output selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_1_0_0;
  output selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_1_0_1;
  output selector_MUX_8_BMEMORY_CTRLN_85_i0_0_0_0;
  output selector_MUX_8_BMEMORY_CTRLN_85_i0_0_0_1;
  output selector_MUX_8_BMEMORY_CTRLN_85_i0_0_1_0;
  output selector_MUX_9_BMEMORY_CTRLN_85_i0_1_0_0;
  output selector_MUX_9_BMEMORY_CTRLN_85_i0_1_0_1;
  output selector_MUX_9_BMEMORY_CTRLN_85_i0_1_0_2;
  output selector_MUX_9_BMEMORY_CTRLN_85_i0_1_0_3;
  output selector_MUX_9_BMEMORY_CTRLN_85_i0_1_1_0;
  output selector_MUX_9_BMEMORY_CTRLN_85_i0_1_1_1;
  output selector_MUX_9_BMEMORY_CTRLN_85_i0_1_2_0;
  output wrenable_reg_0;
  output wrenable_reg_1;
  output wrenable_reg_10;
  output wrenable_reg_11;
  output wrenable_reg_12;
  output wrenable_reg_13;
  output wrenable_reg_14;
  output wrenable_reg_15;
  output wrenable_reg_16;
  output wrenable_reg_17;
  output wrenable_reg_18;
  output wrenable_reg_19;
  output wrenable_reg_2;
  output wrenable_reg_20;
  output wrenable_reg_21;
  output wrenable_reg_22;
  output wrenable_reg_23;
  output wrenable_reg_24;
  output wrenable_reg_25;
  output wrenable_reg_26;
  output wrenable_reg_27;
  output wrenable_reg_28;
  output wrenable_reg_29;
  output wrenable_reg_3;
  output wrenable_reg_30;
  output wrenable_reg_31;
  output wrenable_reg_32;
  output wrenable_reg_33;
  output wrenable_reg_34;
  output wrenable_reg_35;
  output wrenable_reg_36;
  output wrenable_reg_37;
  output wrenable_reg_38;
  output wrenable_reg_39;
  output wrenable_reg_4;
  output wrenable_reg_40;
  output wrenable_reg_41;
  output wrenable_reg_42;
  output wrenable_reg_43;
  output wrenable_reg_44;
  output wrenable_reg_5;
  output wrenable_reg_6;
  output wrenable_reg_7;
  output wrenable_reg_8;
  output wrenable_reg_9;
  parameter [5:0] S_0 = 6'd0,
    S_1 = 6'd1,
    S_2 = 6'd2,
    S_12 = 6'd12,
    S_3 = 6'd3,
    S_4 = 6'd4,
    S_5 = 6'd5,
    S_6 = 6'd6,
    S_7 = 6'd7,
    S_8 = 6'd8,
    S_9 = 6'd9,
    S_10 = 6'd10,
    S_11 = 6'd11,
    S_13 = 6'd13,
    S_14 = 6'd14,
    S_15 = 6'd15,
    S_16 = 6'd16,
    S_17 = 6'd17,
    S_18 = 6'd18,
    S_19 = 6'd19,
    S_20 = 6'd20,
    S_21 = 6'd21,
    S_22 = 6'd22,
    S_23 = 6'd23,
    S_24 = 6'd24,
    S_25 = 6'd25,
    S_26 = 6'd26,
    S_27 = 6'd27,
    S_28 = 6'd28,
    S_29 = 6'd29,
    S_30 = 6'd30,
    S_31 = 6'd31,
    S_32 = 6'd32,
    S_33 = 6'd33,
    S_34 = 6'd34;
  reg [5:0] _present_state, _next_state;
  reg done_port;
  reg fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD;
  reg fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE;
  reg fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_LOAD;
  reg fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_STORE;
  reg fuselector_BMEMORY_CTRLN_85_i0_LOAD;
  reg fuselector_BMEMORY_CTRLN_85_i0_STORE;
  reg selector_MUX_0_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_0_0_0;
  reg selector_MUX_100_reg_0_0_0_0;
  reg selector_MUX_103_reg_11_0_0_0;
  reg selector_MUX_106_reg_14_0_0_0;
  reg selector_MUX_108_reg_16_0_0_0;
  reg selector_MUX_109_reg_17_0_0_0;
  reg selector_MUX_115_reg_22_0_0_0;
  reg selector_MUX_116_reg_23_0_0_0;
  reg selector_MUX_117_reg_24_0_0_0;
  reg selector_MUX_118_reg_25_0_0_0;
  reg selector_MUX_120_reg_27_0_0_0;
  reg selector_MUX_122_reg_29_0_0_0;
  reg selector_MUX_124_reg_30_0_0_0;
  reg selector_MUX_128_reg_34_0_0_0;
  reg selector_MUX_132_reg_38_0_0_0;
  reg selector_MUX_141_reg_6_0_0_0;
  reg selector_MUX_141_reg_6_0_0_1;
  reg selector_MUX_144_reg_9_0_0_0;
  reg selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0;
  reg selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_1_0_0;
  reg selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_1_0_1;
  reg selector_MUX_8_BMEMORY_CTRLN_85_i0_0_0_0;
  reg selector_MUX_8_BMEMORY_CTRLN_85_i0_0_0_1;
  reg selector_MUX_8_BMEMORY_CTRLN_85_i0_0_1_0;
  reg selector_MUX_9_BMEMORY_CTRLN_85_i0_1_0_0;
  reg selector_MUX_9_BMEMORY_CTRLN_85_i0_1_0_1;
  reg selector_MUX_9_BMEMORY_CTRLN_85_i0_1_0_2;
  reg selector_MUX_9_BMEMORY_CTRLN_85_i0_1_0_3;
  reg selector_MUX_9_BMEMORY_CTRLN_85_i0_1_1_0;
  reg selector_MUX_9_BMEMORY_CTRLN_85_i0_1_1_1;
  reg selector_MUX_9_BMEMORY_CTRLN_85_i0_1_2_0;
  reg wrenable_reg_0;
  reg wrenable_reg_1;
  reg wrenable_reg_10;
  reg wrenable_reg_11;
  reg wrenable_reg_12;
  reg wrenable_reg_13;
  reg wrenable_reg_14;
  reg wrenable_reg_15;
  reg wrenable_reg_16;
  reg wrenable_reg_17;
  reg wrenable_reg_18;
  reg wrenable_reg_19;
  reg wrenable_reg_2;
  reg wrenable_reg_20;
  reg wrenable_reg_21;
  reg wrenable_reg_22;
  reg wrenable_reg_23;
  reg wrenable_reg_24;
  reg wrenable_reg_25;
  reg wrenable_reg_26;
  reg wrenable_reg_27;
  reg wrenable_reg_28;
  reg wrenable_reg_29;
  reg wrenable_reg_3;
  reg wrenable_reg_30;
  reg wrenable_reg_31;
  reg wrenable_reg_32;
  reg wrenable_reg_33;
  reg wrenable_reg_34;
  reg wrenable_reg_35;
  reg wrenable_reg_36;
  reg wrenable_reg_37;
  reg wrenable_reg_38;
  reg wrenable_reg_39;
  reg wrenable_reg_4;
  reg wrenable_reg_40;
  reg wrenable_reg_41;
  reg wrenable_reg_42;
  reg wrenable_reg_43;
  reg wrenable_reg_44;
  reg wrenable_reg_5;
  reg wrenable_reg_6;
  reg wrenable_reg_7;
  reg wrenable_reg_8;
  reg wrenable_reg_9;
  
  always @(posedge clock)
    if (reset == 1'b0) _present_state <= S_0;
    else _present_state <= _next_state;
  
  always @(*)
  begin
    done_port = 1'b0;
    fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD = 1'b0;
    fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE = 1'b0;
    fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_LOAD = 1'b0;
    fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_STORE = 1'b0;
    fuselector_BMEMORY_CTRLN_85_i0_LOAD = 1'b0;
    fuselector_BMEMORY_CTRLN_85_i0_STORE = 1'b0;
    selector_MUX_0_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_0_0_0 = 1'b0;
    selector_MUX_100_reg_0_0_0_0 = 1'b0;
    selector_MUX_103_reg_11_0_0_0 = 1'b0;
    selector_MUX_106_reg_14_0_0_0 = 1'b0;
    selector_MUX_108_reg_16_0_0_0 = 1'b0;
    selector_MUX_109_reg_17_0_0_0 = 1'b0;
    selector_MUX_115_reg_22_0_0_0 = 1'b0;
    selector_MUX_116_reg_23_0_0_0 = 1'b0;
    selector_MUX_117_reg_24_0_0_0 = 1'b0;
    selector_MUX_118_reg_25_0_0_0 = 1'b0;
    selector_MUX_120_reg_27_0_0_0 = 1'b0;
    selector_MUX_122_reg_29_0_0_0 = 1'b0;
    selector_MUX_124_reg_30_0_0_0 = 1'b0;
    selector_MUX_128_reg_34_0_0_0 = 1'b0;
    selector_MUX_132_reg_38_0_0_0 = 1'b0;
    selector_MUX_141_reg_6_0_0_0 = 1'b0;
    selector_MUX_141_reg_6_0_0_1 = 1'b0;
    selector_MUX_144_reg_9_0_0_0 = 1'b0;
    selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0 = 1'b0;
    selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_1_0_0 = 1'b0;
    selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_1_0_1 = 1'b0;
    selector_MUX_8_BMEMORY_CTRLN_85_i0_0_0_0 = 1'b0;
    selector_MUX_8_BMEMORY_CTRLN_85_i0_0_0_1 = 1'b0;
    selector_MUX_8_BMEMORY_CTRLN_85_i0_0_1_0 = 1'b0;
    selector_MUX_9_BMEMORY_CTRLN_85_i0_1_0_0 = 1'b0;
    selector_MUX_9_BMEMORY_CTRLN_85_i0_1_0_1 = 1'b0;
    selector_MUX_9_BMEMORY_CTRLN_85_i0_1_0_2 = 1'b0;
    selector_MUX_9_BMEMORY_CTRLN_85_i0_1_0_3 = 1'b0;
    selector_MUX_9_BMEMORY_CTRLN_85_i0_1_1_0 = 1'b0;
    selector_MUX_9_BMEMORY_CTRLN_85_i0_1_1_1 = 1'b0;
    selector_MUX_9_BMEMORY_CTRLN_85_i0_1_2_0 = 1'b0;
    wrenable_reg_0 = 1'b0;
    wrenable_reg_1 = 1'b0;
    wrenable_reg_10 = 1'b0;
    wrenable_reg_11 = 1'b0;
    wrenable_reg_12 = 1'b0;
    wrenable_reg_13 = 1'b0;
    wrenable_reg_14 = 1'b0;
    wrenable_reg_15 = 1'b0;
    wrenable_reg_16 = 1'b0;
    wrenable_reg_17 = 1'b0;
    wrenable_reg_18 = 1'b0;
    wrenable_reg_19 = 1'b0;
    wrenable_reg_2 = 1'b0;
    wrenable_reg_20 = 1'b0;
    wrenable_reg_21 = 1'b0;
    wrenable_reg_22 = 1'b0;
    wrenable_reg_23 = 1'b0;
    wrenable_reg_24 = 1'b0;
    wrenable_reg_25 = 1'b0;
    wrenable_reg_26 = 1'b0;
    wrenable_reg_27 = 1'b0;
    wrenable_reg_28 = 1'b0;
    wrenable_reg_29 = 1'b0;
    wrenable_reg_3 = 1'b0;
    wrenable_reg_30 = 1'b0;
    wrenable_reg_31 = 1'b0;
    wrenable_reg_32 = 1'b0;
    wrenable_reg_33 = 1'b0;
    wrenable_reg_34 = 1'b0;
    wrenable_reg_35 = 1'b0;
    wrenable_reg_36 = 1'b0;
    wrenable_reg_37 = 1'b0;
    wrenable_reg_38 = 1'b0;
    wrenable_reg_39 = 1'b0;
    wrenable_reg_4 = 1'b0;
    wrenable_reg_40 = 1'b0;
    wrenable_reg_41 = 1'b0;
    wrenable_reg_42 = 1'b0;
    wrenable_reg_43 = 1'b0;
    wrenable_reg_44 = 1'b0;
    wrenable_reg_5 = 1'b0;
    wrenable_reg_6 = 1'b0;
    wrenable_reg_7 = 1'b0;
    wrenable_reg_8 = 1'b0;
    wrenable_reg_9 = 1'b0;
    case (_present_state)
      S_0 :
        if(start_port == 1'b1)
        begin
          selector_MUX_100_reg_0_0_0_0 = 1'b1;
          selector_MUX_117_reg_24_0_0_0 = 1'b1;
          wrenable_reg_0 = 1'b1;
          wrenable_reg_1 = 1'b1;
          wrenable_reg_2 = 1'b1;
          wrenable_reg_24 = 1'b1;
          wrenable_reg_3 = 1'b1;
          wrenable_reg_4 = 1'b1;
          wrenable_reg_5 = 1'b1;
          wrenable_reg_6 = 1'b1;
          _next_state = S_1;
        end
        else
        begin
          selector_MUX_0_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_0_0_0 = 1'bX;
          selector_MUX_100_reg_0_0_0_0 = 1'bX;
          selector_MUX_103_reg_11_0_0_0 = 1'bX;
          selector_MUX_106_reg_14_0_0_0 = 1'bX;
          selector_MUX_108_reg_16_0_0_0 = 1'bX;
          selector_MUX_109_reg_17_0_0_0 = 1'bX;
          selector_MUX_115_reg_22_0_0_0 = 1'bX;
          selector_MUX_116_reg_23_0_0_0 = 1'bX;
          selector_MUX_117_reg_24_0_0_0 = 1'bX;
          selector_MUX_118_reg_25_0_0_0 = 1'bX;
          selector_MUX_120_reg_27_0_0_0 = 1'bX;
          selector_MUX_122_reg_29_0_0_0 = 1'bX;
          selector_MUX_124_reg_30_0_0_0 = 1'bX;
          selector_MUX_128_reg_34_0_0_0 = 1'bX;
          selector_MUX_132_reg_38_0_0_0 = 1'bX;
          selector_MUX_141_reg_6_0_0_0 = 1'bX;
          selector_MUX_141_reg_6_0_0_1 = 1'bX;
          selector_MUX_144_reg_9_0_0_0 = 1'bX;
          selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0 = 1'bX;
          selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_1_0_0 = 1'bX;
          selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_1_0_1 = 1'bX;
          selector_MUX_8_BMEMORY_CTRLN_85_i0_0_0_0 = 1'bX;
          selector_MUX_8_BMEMORY_CTRLN_85_i0_0_0_1 = 1'bX;
          selector_MUX_8_BMEMORY_CTRLN_85_i0_0_1_0 = 1'bX;
          selector_MUX_9_BMEMORY_CTRLN_85_i0_1_0_0 = 1'bX;
          selector_MUX_9_BMEMORY_CTRLN_85_i0_1_0_1 = 1'bX;
          selector_MUX_9_BMEMORY_CTRLN_85_i0_1_0_2 = 1'bX;
          selector_MUX_9_BMEMORY_CTRLN_85_i0_1_0_3 = 1'bX;
          selector_MUX_9_BMEMORY_CTRLN_85_i0_1_1_0 = 1'bX;
          selector_MUX_9_BMEMORY_CTRLN_85_i0_1_1_1 = 1'bX;
          selector_MUX_9_BMEMORY_CTRLN_85_i0_1_2_0 = 1'bX;
          wrenable_reg_0 = 1'bX;
          wrenable_reg_1 = 1'bX;
          wrenable_reg_10 = 1'bX;
          wrenable_reg_11 = 1'bX;
          wrenable_reg_12 = 1'bX;
          wrenable_reg_13 = 1'bX;
          wrenable_reg_14 = 1'bX;
          wrenable_reg_15 = 1'bX;
          wrenable_reg_16 = 1'bX;
          wrenable_reg_17 = 1'bX;
          wrenable_reg_18 = 1'bX;
          wrenable_reg_19 = 1'bX;
          wrenable_reg_2 = 1'bX;
          wrenable_reg_20 = 1'bX;
          wrenable_reg_21 = 1'bX;
          wrenable_reg_22 = 1'bX;
          wrenable_reg_23 = 1'bX;
          wrenable_reg_24 = 1'bX;
          wrenable_reg_25 = 1'bX;
          wrenable_reg_26 = 1'bX;
          wrenable_reg_27 = 1'bX;
          wrenable_reg_28 = 1'bX;
          wrenable_reg_29 = 1'bX;
          wrenable_reg_3 = 1'bX;
          wrenable_reg_30 = 1'bX;
          wrenable_reg_31 = 1'bX;
          wrenable_reg_32 = 1'bX;
          wrenable_reg_33 = 1'bX;
          wrenable_reg_34 = 1'bX;
          wrenable_reg_35 = 1'bX;
          wrenable_reg_36 = 1'bX;
          wrenable_reg_37 = 1'bX;
          wrenable_reg_38 = 1'bX;
          wrenable_reg_39 = 1'bX;
          wrenable_reg_4 = 1'bX;
          wrenable_reg_40 = 1'bX;
          wrenable_reg_41 = 1'bX;
          wrenable_reg_42 = 1'bX;
          wrenable_reg_43 = 1'bX;
          wrenable_reg_44 = 1'bX;
          wrenable_reg_5 = 1'bX;
          wrenable_reg_6 = 1'bX;
          wrenable_reg_7 = 1'bX;
          wrenable_reg_8 = 1'bX;
          wrenable_reg_9 = 1'bX;
          _next_state = S_0;
        end
      S_1 :
        begin
          selector_MUX_141_reg_6_0_0_0 = 1'b1;
          selector_MUX_141_reg_6_0_0_1 = 1'b1;
          wrenable_reg_0 = 1'b1;
          wrenable_reg_6 = 1'b1;
          if (OUT_CONDITION_dijkstraF_28863_29110 == 1'b1)
            begin
              _next_state = S_1;
              selector_MUX_141_reg_6_0_0_1 = 1'b0;
            end
          else
            begin
              _next_state = S_2;
              selector_MUX_141_reg_6_0_0_0 = 1'b0;
              wrenable_reg_0 = 1'b0;
            end
        end
      S_2 :
        begin
          selector_MUX_103_reg_11_0_0_0 = 1'b1;
          selector_MUX_106_reg_14_0_0_0 = 1'b1;
          wrenable_reg_11 = 1'b1;
          wrenable_reg_14 = 1'b1;
          wrenable_reg_7 = 1'b1;
          wrenable_reg_8 = 1'b1;
          wrenable_reg_9 = 1'b1;
          _next_state = S_12;
        end
      S_12 :
        begin
          selector_MUX_108_reg_16_0_0_0 = 1'b1;
          selector_MUX_109_reg_17_0_0_0 = 1'b1;
          wrenable_reg_10 = 1'b1;
          wrenable_reg_11 = 1'b1;
          wrenable_reg_12 = 1'b1;
          wrenable_reg_13 = 1'b1;
          wrenable_reg_14 = 1'b1;
          wrenable_reg_16 = 1'b1;
          wrenable_reg_17 = 1'b1;
          _next_state = S_3;
        end
      S_3 :
        begin
          fuselector_BMEMORY_CTRLN_85_i0_LOAD = 1'b1;
          wrenable_reg_15 = 1'b1;
          wrenable_reg_16 = 1'b1;
          wrenable_reg_17 = 1'b1;
          wrenable_reg_18 = 1'b1;
          wrenable_reg_19 = 1'b1;
          wrenable_reg_20 = 1'b1;
          wrenable_reg_21 = 1'b1;
          _next_state = S_4;
        end
      S_4 :
        begin
          selector_MUX_115_reg_22_0_0_0 = 1'b1;
          wrenable_reg_22 = 1'b1;
          if (OUT_CONDITION_dijkstraF_28863_29159 == 1'b1)
            begin
              _next_state = S_5;
              selector_MUX_115_reg_22_0_0_0 = 1'b0;
            end
          else
            begin
              _next_state = S_6;
            end
        end
      S_5 :
        begin
          fuselector_BMEMORY_CTRLN_85_i0_STORE = 1'b1;
          selector_MUX_8_BMEMORY_CTRLN_85_i0_0_1_0 = 1'b1;
          selector_MUX_9_BMEMORY_CTRLN_85_i0_1_0_2 = 1'b1;
          selector_MUX_9_BMEMORY_CTRLN_85_i0_1_1_1 = 1'b1;
          _next_state = S_6;
        end
      S_6 :
        begin
          selector_MUX_116_reg_23_0_0_0 = 1'b1;
          wrenable_reg_23 = 1'b1;
          if (OUT_CONDITION_dijkstraF_28863_29238 == 1'b1)
            begin
              _next_state = S_7;
              selector_MUX_116_reg_23_0_0_0 = 1'b0;
              wrenable_reg_23 = 1'b0;
            end
          else
            begin
              _next_state = S_8;
            end
        end
      S_7 :
        begin
          fuselector_BMEMORY_CTRLN_85_i0_STORE = 1'b1;
          selector_MUX_8_BMEMORY_CTRLN_85_i0_0_0_1 = 1'b1;
          selector_MUX_9_BMEMORY_CTRLN_85_i0_1_0_2 = 1'b1;
          selector_MUX_9_BMEMORY_CTRLN_85_i0_1_1_1 = 1'b1;
          wrenable_reg_23 = 1'b1;
          _next_state = S_8;
        end
      S_8 :
        begin
          fuselector_BMEMORY_CTRLN_85_i0_LOAD = 1'b1;
          selector_MUX_9_BMEMORY_CTRLN_85_i0_1_1_1 = 1'b1;
          _next_state = S_9;
        end
      S_9 :
        begin
          if (OUT_CONDITION_dijkstraF_28863_29252 == 1'b1)
            begin
              _next_state = S_10;
            end
          else
            begin
              _next_state = S_11;
            end
        end
      S_10 :
        begin
          fuselector_BMEMORY_CTRLN_85_i0_STORE = 1'b1;
          selector_MUX_9_BMEMORY_CTRLN_85_i0_1_1_1 = 1'b1;
          _next_state = S_11;
        end
      S_11 :
        begin
          selector_MUX_144_reg_9_0_0_0 = 1'b1;
          wrenable_reg_9 = 1'b1;
          if (OUT_MULTIIF_dijkstraF_28863_29821[0] == 1'b1)
            begin
              _next_state = S_3;
              selector_MUX_144_reg_9_0_0_0 = 1'b0;
              wrenable_reg_9 = 1'b0;
            end
          else if (OUT_MULTIIF_dijkstraF_28863_29821[1] == 1'b1)
            begin
              _next_state = S_12;
            end
          else
            begin
              _next_state = S_13;
              selector_MUX_144_reg_9_0_0_0 = 1'b0;
              wrenable_reg_9 = 1'b0;
            end
        end
      S_13 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE = 1'b1;
          selector_MUX_0_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_0_0_0 = 1'b1;
          wrenable_reg_24 = 1'b1;
          if (OUT_CONDITION_dijkstraF_28863_29278 == 1'b1)
            begin
              _next_state = S_13;
            end
          else
            begin
              _next_state = S_14;
              wrenable_reg_24 = 1'b0;
            end
        end
      S_14 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_STORE = 1'b1;
          selector_MUX_120_reg_27_0_0_0 = 1'b1;
          selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_1_0_0 = 1'b1;
          wrenable_reg_27 = 1'b1;
          _next_state = S_15;
        end
      S_15 :
        begin
          fuselector_BMEMORY_CTRLN_85_i0_LOAD = 1'b1;
          selector_MUX_9_BMEMORY_CTRLN_85_i0_1_0_0 = 1'b1;
          selector_MUX_9_BMEMORY_CTRLN_85_i0_1_1_0 = 1'b1;
          selector_MUX_9_BMEMORY_CTRLN_85_i0_1_2_0 = 1'b1;
          _next_state = S_16;
        end
      S_16 :
        begin
          selector_MUX_118_reg_25_0_0_0 = 1'b1;
          selector_MUX_122_reg_29_0_0_0 = 1'b1;
          selector_MUX_124_reg_30_0_0_0 = 1'b1;
          selector_MUX_128_reg_34_0_0_0 = 1'b1;
          wrenable_reg_25 = 1'b1;
          wrenable_reg_29 = 1'b1;
          wrenable_reg_30 = 1'b1;
          wrenable_reg_34 = 1'b1;
          if (OUT_CONDITION_dijkstraF_28863_29298 == 1'b1)
            begin
              _next_state = S_17;
              selector_MUX_122_reg_29_0_0_0 = 1'b0;
              selector_MUX_124_reg_30_0_0_0 = 1'b0;
              selector_MUX_128_reg_34_0_0_0 = 1'b0;
              wrenable_reg_29 = 1'b0;
              wrenable_reg_30 = 1'b0;
              wrenable_reg_34 = 1'b0;
            end
          else
            begin
              _next_state = S_21;
              selector_MUX_118_reg_25_0_0_0 = 1'b0;
              wrenable_reg_25 = 1'b0;
            end
        end
      S_17 :
        begin
          wrenable_reg_25 = 1'b1;
          wrenable_reg_26 = 1'b1;
          _next_state = S_18;
        end
      S_18 :
        begin
          fuselector_BMEMORY_CTRLN_85_i0_LOAD = 1'b1;
          selector_MUX_9_BMEMORY_CTRLN_85_i0_1_2_0 = 1'b1;
          _next_state = S_19;
        end
      S_19 :
        begin
          if (OUT_CONDITION_dijkstraF_28863_29381 == 1'b1)
            begin
              _next_state = S_17;
            end
          else
            begin
              _next_state = S_20;
            end
        end
      S_20 :
        begin
          selector_MUX_122_reg_29_0_0_0 = 1'b1;
          selector_MUX_124_reg_30_0_0_0 = 1'b1;
          selector_MUX_128_reg_34_0_0_0 = 1'b1;
          wrenable_reg_29 = 1'b1;
          wrenable_reg_30 = 1'b1;
          wrenable_reg_34 = 1'b1;
          if (OUT_CONDITION_dijkstraF_28863_29398 == 1'b1)
            begin
              _next_state = S_34;
              done_port = 1'b1;
              selector_MUX_122_reg_29_0_0_0 = 1'b0;
              selector_MUX_124_reg_30_0_0_0 = 1'b0;
              selector_MUX_128_reg_34_0_0_0 = 1'b0;
              wrenable_reg_29 = 1'b0;
              wrenable_reg_30 = 1'b0;
              wrenable_reg_34 = 1'b0;
            end
          else
            begin
              _next_state = S_21;
            end
        end
      S_21 :
        begin
          fuselector_BMEMORY_CTRLN_85_i0_LOAD = 1'b1;
          selector_MUX_9_BMEMORY_CTRLN_85_i0_1_0_3 = 1'b1;
          wrenable_reg_28 = 1'b1;
          wrenable_reg_29 = 1'b1;
          wrenable_reg_30 = 1'b1;
          wrenable_reg_31 = 1'b1;
          wrenable_reg_32 = 1'b1;
          wrenable_reg_33 = 1'b1;
          _next_state = S_22;
        end
      S_22 :
        begin
          if (OUT_CONDITION_dijkstraF_28863_29409 == 1'b1)
            begin
              _next_state = S_23;
            end
          else
            begin
              _next_state = S_25;
            end
        end
      S_23 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_LOAD = 1'b1;
          selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_1_0_1 = 1'b1;
          _next_state = S_24;
        end
      S_24 :
        begin
          wrenable_reg_27 = 1'b1;
          wrenable_reg_34 = 1'b1;
          _next_state = S_25;
        end
      S_25 :
        begin
          if (OUT_CONDITION_dijkstraF_28863_29442 == 1'b1)
            begin
              _next_state = S_21;
            end
          else
            begin
              _next_state = S_26;
            end
        end
      S_26 :
        begin
          wrenable_reg_35 = 1'b1;
          wrenable_reg_36 = 1'b1;
          wrenable_reg_37 = 1'b1;
          _next_state = S_27;
        end
      S_27 :
        begin
          fuselector_BMEMORY_CTRLN_85_i0_STORE = 1'b1;
          selector_MUX_132_reg_38_0_0_0 = 1'b1;
          selector_MUX_8_BMEMORY_CTRLN_85_i0_0_0_0 = 1'b1;
          selector_MUX_8_BMEMORY_CTRLN_85_i0_0_1_0 = 1'b1;
          selector_MUX_9_BMEMORY_CTRLN_85_i0_1_0_1 = 1'b1;
          selector_MUX_9_BMEMORY_CTRLN_85_i0_1_2_0 = 1'b1;
          wrenable_reg_38 = 1'b1;
          _next_state = S_28;
        end
      S_28 :
        begin
          wrenable_reg_38 = 1'b1;
          wrenable_reg_39 = 1'b1;
          wrenable_reg_40 = 1'b1;
          wrenable_reg_41 = 1'b1;
          wrenable_reg_42 = 1'b1;
          if (OUT_CONDITION_dijkstraF_28863_29445 == 1'b1)
            begin
              _next_state = S_29;
            end
          else
            begin
              _next_state = S_33;
              wrenable_reg_39 = 1'b0;
              wrenable_reg_40 = 1'b0;
              wrenable_reg_41 = 1'b0;
            end
        end
      S_29 :
        begin
          fuselector_BMEMORY_CTRLN_85_i0_LOAD = 1'b1;
          selector_MUX_9_BMEMORY_CTRLN_85_i0_1_1_0 = 1'b1;
          selector_MUX_9_BMEMORY_CTRLN_85_i0_1_2_0 = 1'b1;
          _next_state = S_30;
        end
      S_30 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD = 1'b1;
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_LOAD = 1'b1;
          selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0 = 1'b1;
          wrenable_reg_43 = 1'b1;
          _next_state = S_31;
        end
      S_31 :
        begin
          wrenable_reg_44 = 1'b1;
          if (OUT_CONDITION_dijkstraF_28863_29450 == 1'b1)
            begin
              _next_state = S_32;
            end
          else
            begin
              _next_state = S_33;
              wrenable_reg_44 = 1'b0;
            end
        end
      S_32 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE = 1'b1;
          selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0 = 1'b1;
          _next_state = S_33;
        end
      S_33 :
        begin
          if (OUT_CONDITION_dijkstraF_28863_29455 == 1'b1)
            begin
              _next_state = S_28;
            end
          else
            begin
              _next_state = S_15;
            end
        end
      S_34 :
        begin
          _next_state = S_0;
        end
      default :
        begin
          _next_state = S_0;
          selector_MUX_0_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_0_0_0 = 1'bX;
          selector_MUX_100_reg_0_0_0_0 = 1'bX;
          selector_MUX_103_reg_11_0_0_0 = 1'bX;
          selector_MUX_106_reg_14_0_0_0 = 1'bX;
          selector_MUX_108_reg_16_0_0_0 = 1'bX;
          selector_MUX_109_reg_17_0_0_0 = 1'bX;
          selector_MUX_115_reg_22_0_0_0 = 1'bX;
          selector_MUX_116_reg_23_0_0_0 = 1'bX;
          selector_MUX_117_reg_24_0_0_0 = 1'bX;
          selector_MUX_118_reg_25_0_0_0 = 1'bX;
          selector_MUX_120_reg_27_0_0_0 = 1'bX;
          selector_MUX_122_reg_29_0_0_0 = 1'bX;
          selector_MUX_124_reg_30_0_0_0 = 1'bX;
          selector_MUX_128_reg_34_0_0_0 = 1'bX;
          selector_MUX_132_reg_38_0_0_0 = 1'bX;
          selector_MUX_141_reg_6_0_0_0 = 1'bX;
          selector_MUX_141_reg_6_0_0_1 = 1'bX;
          selector_MUX_144_reg_9_0_0_0 = 1'bX;
          selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0 = 1'bX;
          selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_1_0_0 = 1'bX;
          selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_1_0_1 = 1'bX;
          selector_MUX_8_BMEMORY_CTRLN_85_i0_0_0_0 = 1'bX;
          selector_MUX_8_BMEMORY_CTRLN_85_i0_0_0_1 = 1'bX;
          selector_MUX_8_BMEMORY_CTRLN_85_i0_0_1_0 = 1'bX;
          selector_MUX_9_BMEMORY_CTRLN_85_i0_1_0_0 = 1'bX;
          selector_MUX_9_BMEMORY_CTRLN_85_i0_1_0_1 = 1'bX;
          selector_MUX_9_BMEMORY_CTRLN_85_i0_1_0_2 = 1'bX;
          selector_MUX_9_BMEMORY_CTRLN_85_i0_1_0_3 = 1'bX;
          selector_MUX_9_BMEMORY_CTRLN_85_i0_1_1_0 = 1'bX;
          selector_MUX_9_BMEMORY_CTRLN_85_i0_1_1_1 = 1'bX;
          selector_MUX_9_BMEMORY_CTRLN_85_i0_1_2_0 = 1'bX;
          wrenable_reg_0 = 1'bX;
          wrenable_reg_1 = 1'bX;
          wrenable_reg_10 = 1'bX;
          wrenable_reg_11 = 1'bX;
          wrenable_reg_12 = 1'bX;
          wrenable_reg_13 = 1'bX;
          wrenable_reg_14 = 1'bX;
          wrenable_reg_15 = 1'bX;
          wrenable_reg_16 = 1'bX;
          wrenable_reg_17 = 1'bX;
          wrenable_reg_18 = 1'bX;
          wrenable_reg_19 = 1'bX;
          wrenable_reg_2 = 1'bX;
          wrenable_reg_20 = 1'bX;
          wrenable_reg_21 = 1'bX;
          wrenable_reg_22 = 1'bX;
          wrenable_reg_23 = 1'bX;
          wrenable_reg_24 = 1'bX;
          wrenable_reg_25 = 1'bX;
          wrenable_reg_26 = 1'bX;
          wrenable_reg_27 = 1'bX;
          wrenable_reg_28 = 1'bX;
          wrenable_reg_29 = 1'bX;
          wrenable_reg_3 = 1'bX;
          wrenable_reg_30 = 1'bX;
          wrenable_reg_31 = 1'bX;
          wrenable_reg_32 = 1'bX;
          wrenable_reg_33 = 1'bX;
          wrenable_reg_34 = 1'bX;
          wrenable_reg_35 = 1'bX;
          wrenable_reg_36 = 1'bX;
          wrenable_reg_37 = 1'bX;
          wrenable_reg_38 = 1'bX;
          wrenable_reg_39 = 1'bX;
          wrenable_reg_4 = 1'bX;
          wrenable_reg_40 = 1'bX;
          wrenable_reg_41 = 1'bX;
          wrenable_reg_42 = 1'bX;
          wrenable_reg_43 = 1'bX;
          wrenable_reg_44 = 1'bX;
          wrenable_reg_5 = 1'bX;
          wrenable_reg_6 = 1'bX;
          wrenable_reg_7 = 1'bX;
          wrenable_reg_8 = 1'bX;
          wrenable_reg_9 = 1'bX;
        end
    endcase
  end
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Marco Lattuada <marco.lattuada@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module flipflop_AR(clock, reset, in1, out1);
  parameter BITSIZE_in1=1, BITSIZE_out1=1;
  // IN
  input clock;
  input reset;
  input in1;
  // OUT
  output out1;
  
  reg reg_out1 =0;
  assign out1 = reg_out1;
  always @(posedge clock )
    if (reset == 1'b0)
      reg_out1 <= {BITSIZE_out1{1'b0}};
    else
      reg_out1 <= in1;
endmodule

// Top component for dijkstraF
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module dijkstraF(clock, reset, start_port, done_port, a, S_oe_ram, S_we_ram, S_addr_ram, S_Wdata_ram, S_data_ram_size, M_Rdata_ram, M_DataRdy, Sin_Rdata_ram, Sin_DataRdy, Min_oe_ram, Min_we_ram, Min_addr_ram, Min_Wdata_ram, Min_data_ram_size, Sout_Rdata_ram, Sout_DataRdy, Mout_oe_ram, Mout_we_ram, Mout_addr_ram, Mout_Wdata_ram, Mout_data_ram_size);
  parameter MEM_var_28859_28863=1024;
  // IN
  input clock;
  input reset;
  input start_port;
  input [31:0] a;
  input [1:0] S_oe_ram;
  input [1:0] S_we_ram;
  input [21:0] S_addr_ram;
  input [15:0] S_Wdata_ram;
  input [7:0] S_data_ram_size;
  input [15:0] M_Rdata_ram;
  input [1:0] M_DataRdy;
  input [15:0] Sin_Rdata_ram;
  input [1:0] Sin_DataRdy;
  input [1:0] Min_oe_ram;
  input [1:0] Min_we_ram;
  input [21:0] Min_addr_ram;
  input [15:0] Min_Wdata_ram;
  input [7:0] Min_data_ram_size;
  // OUT
  output done_port;
  output [15:0] Sout_Rdata_ram;
  output [1:0] Sout_DataRdy;
  output [1:0] Mout_oe_ram;
  output [1:0] Mout_we_ram;
  output [21:0] Mout_addr_ram;
  output [15:0] Mout_Wdata_ram;
  output [7:0] Mout_data_ram_size;
  // Component and signal declarations
  wire OUT_CONDITION_dijkstraF_28863_29110;
  wire OUT_CONDITION_dijkstraF_28863_29159;
  wire OUT_CONDITION_dijkstraF_28863_29238;
  wire OUT_CONDITION_dijkstraF_28863_29252;
  wire OUT_CONDITION_dijkstraF_28863_29278;
  wire OUT_CONDITION_dijkstraF_28863_29298;
  wire OUT_CONDITION_dijkstraF_28863_29381;
  wire OUT_CONDITION_dijkstraF_28863_29398;
  wire OUT_CONDITION_dijkstraF_28863_29409;
  wire OUT_CONDITION_dijkstraF_28863_29442;
  wire OUT_CONDITION_dijkstraF_28863_29445;
  wire OUT_CONDITION_dijkstraF_28863_29450;
  wire OUT_CONDITION_dijkstraF_28863_29455;
  wire [1:0] OUT_MULTIIF_dijkstraF_28863_29821;
  wire done_delayed_REG_signal_in;
  wire done_delayed_REG_signal_out;
  wire fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD;
  wire fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE;
  wire fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_LOAD;
  wire fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_STORE;
  wire fuselector_BMEMORY_CTRLN_85_i0_LOAD;
  wire fuselector_BMEMORY_CTRLN_85_i0_STORE;
  wire selector_MUX_0_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_0_0_0;
  wire selector_MUX_100_reg_0_0_0_0;
  wire selector_MUX_103_reg_11_0_0_0;
  wire selector_MUX_106_reg_14_0_0_0;
  wire selector_MUX_108_reg_16_0_0_0;
  wire selector_MUX_109_reg_17_0_0_0;
  wire selector_MUX_115_reg_22_0_0_0;
  wire selector_MUX_116_reg_23_0_0_0;
  wire selector_MUX_117_reg_24_0_0_0;
  wire selector_MUX_118_reg_25_0_0_0;
  wire selector_MUX_120_reg_27_0_0_0;
  wire selector_MUX_122_reg_29_0_0_0;
  wire selector_MUX_124_reg_30_0_0_0;
  wire selector_MUX_128_reg_34_0_0_0;
  wire selector_MUX_132_reg_38_0_0_0;
  wire selector_MUX_141_reg_6_0_0_0;
  wire selector_MUX_141_reg_6_0_0_1;
  wire selector_MUX_144_reg_9_0_0_0;
  wire selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0;
  wire selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_1_0_0;
  wire selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_1_0_1;
  wire selector_MUX_8_BMEMORY_CTRLN_85_i0_0_0_0;
  wire selector_MUX_8_BMEMORY_CTRLN_85_i0_0_0_1;
  wire selector_MUX_8_BMEMORY_CTRLN_85_i0_0_1_0;
  wire selector_MUX_9_BMEMORY_CTRLN_85_i0_1_0_0;
  wire selector_MUX_9_BMEMORY_CTRLN_85_i0_1_0_1;
  wire selector_MUX_9_BMEMORY_CTRLN_85_i0_1_0_2;
  wire selector_MUX_9_BMEMORY_CTRLN_85_i0_1_0_3;
  wire selector_MUX_9_BMEMORY_CTRLN_85_i0_1_1_0;
  wire selector_MUX_9_BMEMORY_CTRLN_85_i0_1_1_1;
  wire selector_MUX_9_BMEMORY_CTRLN_85_i0_1_2_0;
  wire wrenable_reg_0;
  wire wrenable_reg_1;
  wire wrenable_reg_10;
  wire wrenable_reg_11;
  wire wrenable_reg_12;
  wire wrenable_reg_13;
  wire wrenable_reg_14;
  wire wrenable_reg_15;
  wire wrenable_reg_16;
  wire wrenable_reg_17;
  wire wrenable_reg_18;
  wire wrenable_reg_19;
  wire wrenable_reg_2;
  wire wrenable_reg_20;
  wire wrenable_reg_21;
  wire wrenable_reg_22;
  wire wrenable_reg_23;
  wire wrenable_reg_24;
  wire wrenable_reg_25;
  wire wrenable_reg_26;
  wire wrenable_reg_27;
  wire wrenable_reg_28;
  wire wrenable_reg_29;
  wire wrenable_reg_3;
  wire wrenable_reg_30;
  wire wrenable_reg_31;
  wire wrenable_reg_32;
  wire wrenable_reg_33;
  wire wrenable_reg_34;
  wire wrenable_reg_35;
  wire wrenable_reg_36;
  wire wrenable_reg_37;
  wire wrenable_reg_38;
  wire wrenable_reg_39;
  wire wrenable_reg_4;
  wire wrenable_reg_40;
  wire wrenable_reg_41;
  wire wrenable_reg_42;
  wire wrenable_reg_43;
  wire wrenable_reg_44;
  wire wrenable_reg_5;
  wire wrenable_reg_6;
  wire wrenable_reg_7;
  wire wrenable_reg_8;
  wire wrenable_reg_9;
  
  controller_dijkstraF Controller_i (.done_port(done_delayed_REG_signal_in), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_STORE), .fuselector_BMEMORY_CTRLN_85_i0_LOAD(fuselector_BMEMORY_CTRLN_85_i0_LOAD), .fuselector_BMEMORY_CTRLN_85_i0_STORE(fuselector_BMEMORY_CTRLN_85_i0_STORE), .selector_MUX_0_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_0_0_0(selector_MUX_0_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_0_0_0), .selector_MUX_100_reg_0_0_0_0(selector_MUX_100_reg_0_0_0_0), .selector_MUX_103_reg_11_0_0_0(selector_MUX_103_reg_11_0_0_0), .selector_MUX_106_reg_14_0_0_0(selector_MUX_106_reg_14_0_0_0), .selector_MUX_108_reg_16_0_0_0(selector_MUX_108_reg_16_0_0_0), .selector_MUX_109_reg_17_0_0_0(selector_MUX_109_reg_17_0_0_0), .selector_MUX_115_reg_22_0_0_0(selector_MUX_115_reg_22_0_0_0), .selector_MUX_116_reg_23_0_0_0(selector_MUX_116_reg_23_0_0_0), .selector_MUX_117_reg_24_0_0_0(selector_MUX_117_reg_24_0_0_0), .selector_MUX_118_reg_25_0_0_0(selector_MUX_118_reg_25_0_0_0), .selector_MUX_120_reg_27_0_0_0(selector_MUX_120_reg_27_0_0_0), .selector_MUX_122_reg_29_0_0_0(selector_MUX_122_reg_29_0_0_0), .selector_MUX_124_reg_30_0_0_0(selector_MUX_124_reg_30_0_0_0), .selector_MUX_128_reg_34_0_0_0(selector_MUX_128_reg_34_0_0_0), .selector_MUX_132_reg_38_0_0_0(selector_MUX_132_reg_38_0_0_0), .selector_MUX_141_reg_6_0_0_0(selector_MUX_141_reg_6_0_0_0), .selector_MUX_141_reg_6_0_0_1(selector_MUX_141_reg_6_0_0_1), .selector_MUX_144_reg_9_0_0_0(selector_MUX_144_reg_9_0_0_0), .selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0(selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0), .selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_1_0_0(selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_1_0_0), .selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_1_0_1(selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_1_0_1), .selector_MUX_8_BMEMORY_CTRLN_85_i0_0_0_0(selector_MUX_8_BMEMORY_CTRLN_85_i0_0_0_0), .selector_MUX_8_BMEMORY_CTRLN_85_i0_0_0_1(selector_MUX_8_BMEMORY_CTRLN_85_i0_0_0_1), .selector_MUX_8_BMEMORY_CTRLN_85_i0_0_1_0(selector_MUX_8_BMEMORY_CTRLN_85_i0_0_1_0), .selector_MUX_9_BMEMORY_CTRLN_85_i0_1_0_0(selector_MUX_9_BMEMORY_CTRLN_85_i0_1_0_0), .selector_MUX_9_BMEMORY_CTRLN_85_i0_1_0_1(selector_MUX_9_BMEMORY_CTRLN_85_i0_1_0_1), .selector_MUX_9_BMEMORY_CTRLN_85_i0_1_0_2(selector_MUX_9_BMEMORY_CTRLN_85_i0_1_0_2), .selector_MUX_9_BMEMORY_CTRLN_85_i0_1_0_3(selector_MUX_9_BMEMORY_CTRLN_85_i0_1_0_3), .selector_MUX_9_BMEMORY_CTRLN_85_i0_1_1_0(selector_MUX_9_BMEMORY_CTRLN_85_i0_1_1_0), .selector_MUX_9_BMEMORY_CTRLN_85_i0_1_1_1(selector_MUX_9_BMEMORY_CTRLN_85_i0_1_1_1), .selector_MUX_9_BMEMORY_CTRLN_85_i0_1_2_0(selector_MUX_9_BMEMORY_CTRLN_85_i0_1_2_0), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_10(wrenable_reg_10), .wrenable_reg_11(wrenable_reg_11), .wrenable_reg_12(wrenable_reg_12), .wrenable_reg_13(wrenable_reg_13), .wrenable_reg_14(wrenable_reg_14), .wrenable_reg_15(wrenable_reg_15), .wrenable_reg_16(wrenable_reg_16), .wrenable_reg_17(wrenable_reg_17), .wrenable_reg_18(wrenable_reg_18), .wrenable_reg_19(wrenable_reg_19), .wrenable_reg_2(wrenable_reg_2), .wrenable_reg_20(wrenable_reg_20), .wrenable_reg_21(wrenable_reg_21), .wrenable_reg_22(wrenable_reg_22), .wrenable_reg_23(wrenable_reg_23), .wrenable_reg_24(wrenable_reg_24), .wrenable_reg_25(wrenable_reg_25), .wrenable_reg_26(wrenable_reg_26), .wrenable_reg_27(wrenable_reg_27), .wrenable_reg_28(wrenable_reg_28), .wrenable_reg_29(wrenable_reg_29), .wrenable_reg_3(wrenable_reg_3), .wrenable_reg_30(wrenable_reg_30), .wrenable_reg_31(wrenable_reg_31), .wrenable_reg_32(wrenable_reg_32), .wrenable_reg_33(wrenable_reg_33), .wrenable_reg_34(wrenable_reg_34), .wrenable_reg_35(wrenable_reg_35), .wrenable_reg_36(wrenable_reg_36), .wrenable_reg_37(wrenable_reg_37), .wrenable_reg_38(wrenable_reg_38), .wrenable_reg_39(wrenable_reg_39), .wrenable_reg_4(wrenable_reg_4), .wrenable_reg_40(wrenable_reg_40), .wrenable_reg_41(wrenable_reg_41), .wrenable_reg_42(wrenable_reg_42), .wrenable_reg_43(wrenable_reg_43), .wrenable_reg_44(wrenable_reg_44), .wrenable_reg_5(wrenable_reg_5), .wrenable_reg_6(wrenable_reg_6), .wrenable_reg_7(wrenable_reg_7), .wrenable_reg_8(wrenable_reg_8), .wrenable_reg_9(wrenable_reg_9), .OUT_CONDITION_dijkstraF_28863_29110(OUT_CONDITION_dijkstraF_28863_29110), .OUT_CONDITION_dijkstraF_28863_29159(OUT_CONDITION_dijkstraF_28863_29159), .OUT_CONDITION_dijkstraF_28863_29238(OUT_CONDITION_dijkstraF_28863_29238), .OUT_CONDITION_dijkstraF_28863_29252(OUT_CONDITION_dijkstraF_28863_29252), .OUT_CONDITION_dijkstraF_28863_29278(OUT_CONDITION_dijkstraF_28863_29278), .OUT_CONDITION_dijkstraF_28863_29298(OUT_CONDITION_dijkstraF_28863_29298), .OUT_CONDITION_dijkstraF_28863_29381(OUT_CONDITION_dijkstraF_28863_29381), .OUT_CONDITION_dijkstraF_28863_29398(OUT_CONDITION_dijkstraF_28863_29398), .OUT_CONDITION_dijkstraF_28863_29409(OUT_CONDITION_dijkstraF_28863_29409), .OUT_CONDITION_dijkstraF_28863_29442(OUT_CONDITION_dijkstraF_28863_29442), .OUT_CONDITION_dijkstraF_28863_29445(OUT_CONDITION_dijkstraF_28863_29445), .OUT_CONDITION_dijkstraF_28863_29450(OUT_CONDITION_dijkstraF_28863_29450), .OUT_CONDITION_dijkstraF_28863_29455(OUT_CONDITION_dijkstraF_28863_29455), .OUT_MULTIIF_dijkstraF_28863_29821(OUT_MULTIIF_dijkstraF_28863_29821), .clock(clock), .reset(reset), .start_port(start_port));
  datapath_dijkstraF #(.MEM_var_28859_28863(MEM_var_28859_28863)) Datapath_i (.Sout_Rdata_ram(Sout_Rdata_ram), .Sout_DataRdy(Sout_DataRdy), .Mout_oe_ram(Mout_oe_ram), .Mout_we_ram(Mout_we_ram), .Mout_addr_ram(Mout_addr_ram), .Mout_Wdata_ram(Mout_Wdata_ram), .Mout_data_ram_size(Mout_data_ram_size), .OUT_CONDITION_dijkstraF_28863_29110(OUT_CONDITION_dijkstraF_28863_29110), .OUT_CONDITION_dijkstraF_28863_29159(OUT_CONDITION_dijkstraF_28863_29159), .OUT_CONDITION_dijkstraF_28863_29238(OUT_CONDITION_dijkstraF_28863_29238), .OUT_CONDITION_dijkstraF_28863_29252(OUT_CONDITION_dijkstraF_28863_29252), .OUT_CONDITION_dijkstraF_28863_29278(OUT_CONDITION_dijkstraF_28863_29278), .OUT_CONDITION_dijkstraF_28863_29298(OUT_CONDITION_dijkstraF_28863_29298), .OUT_CONDITION_dijkstraF_28863_29381(OUT_CONDITION_dijkstraF_28863_29381), .OUT_CONDITION_dijkstraF_28863_29398(OUT_CONDITION_dijkstraF_28863_29398), .OUT_CONDITION_dijkstraF_28863_29409(OUT_CONDITION_dijkstraF_28863_29409), .OUT_CONDITION_dijkstraF_28863_29442(OUT_CONDITION_dijkstraF_28863_29442), .OUT_CONDITION_dijkstraF_28863_29445(OUT_CONDITION_dijkstraF_28863_29445), .OUT_CONDITION_dijkstraF_28863_29450(OUT_CONDITION_dijkstraF_28863_29450), .OUT_CONDITION_dijkstraF_28863_29455(OUT_CONDITION_dijkstraF_28863_29455), .OUT_MULTIIF_dijkstraF_28863_29821(OUT_MULTIIF_dijkstraF_28863_29821), .clock(clock), .reset(reset), .in_port_a(a), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .S_data_ram_size(S_data_ram_size), .M_Rdata_ram(M_Rdata_ram), .M_DataRdy(M_DataRdy), .Sin_Rdata_ram(Sin_Rdata_ram), .Sin_DataRdy(Sin_DataRdy), .Min_oe_ram(Min_oe_ram), .Min_we_ram(Min_we_ram), .Min_addr_ram(Min_addr_ram), .Min_Wdata_ram(Min_Wdata_ram), .Min_data_ram_size(Min_data_ram_size), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_STORE), .fuselector_BMEMORY_CTRLN_85_i0_LOAD(fuselector_BMEMORY_CTRLN_85_i0_LOAD), .fuselector_BMEMORY_CTRLN_85_i0_STORE(fuselector_BMEMORY_CTRLN_85_i0_STORE), .selector_MUX_0_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_0_0_0(selector_MUX_0_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_0_0_0), .selector_MUX_100_reg_0_0_0_0(selector_MUX_100_reg_0_0_0_0), .selector_MUX_103_reg_11_0_0_0(selector_MUX_103_reg_11_0_0_0), .selector_MUX_106_reg_14_0_0_0(selector_MUX_106_reg_14_0_0_0), .selector_MUX_108_reg_16_0_0_0(selector_MUX_108_reg_16_0_0_0), .selector_MUX_109_reg_17_0_0_0(selector_MUX_109_reg_17_0_0_0), .selector_MUX_115_reg_22_0_0_0(selector_MUX_115_reg_22_0_0_0), .selector_MUX_116_reg_23_0_0_0(selector_MUX_116_reg_23_0_0_0), .selector_MUX_117_reg_24_0_0_0(selector_MUX_117_reg_24_0_0_0), .selector_MUX_118_reg_25_0_0_0(selector_MUX_118_reg_25_0_0_0), .selector_MUX_120_reg_27_0_0_0(selector_MUX_120_reg_27_0_0_0), .selector_MUX_122_reg_29_0_0_0(selector_MUX_122_reg_29_0_0_0), .selector_MUX_124_reg_30_0_0_0(selector_MUX_124_reg_30_0_0_0), .selector_MUX_128_reg_34_0_0_0(selector_MUX_128_reg_34_0_0_0), .selector_MUX_132_reg_38_0_0_0(selector_MUX_132_reg_38_0_0_0), .selector_MUX_141_reg_6_0_0_0(selector_MUX_141_reg_6_0_0_0), .selector_MUX_141_reg_6_0_0_1(selector_MUX_141_reg_6_0_0_1), .selector_MUX_144_reg_9_0_0_0(selector_MUX_144_reg_9_0_0_0), .selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0(selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0), .selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_1_0_0(selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_1_0_0), .selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_1_0_1(selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_1_0_1), .selector_MUX_8_BMEMORY_CTRLN_85_i0_0_0_0(selector_MUX_8_BMEMORY_CTRLN_85_i0_0_0_0), .selector_MUX_8_BMEMORY_CTRLN_85_i0_0_0_1(selector_MUX_8_BMEMORY_CTRLN_85_i0_0_0_1), .selector_MUX_8_BMEMORY_CTRLN_85_i0_0_1_0(selector_MUX_8_BMEMORY_CTRLN_85_i0_0_1_0), .selector_MUX_9_BMEMORY_CTRLN_85_i0_1_0_0(selector_MUX_9_BMEMORY_CTRLN_85_i0_1_0_0), .selector_MUX_9_BMEMORY_CTRLN_85_i0_1_0_1(selector_MUX_9_BMEMORY_CTRLN_85_i0_1_0_1), .selector_MUX_9_BMEMORY_CTRLN_85_i0_1_0_2(selector_MUX_9_BMEMORY_CTRLN_85_i0_1_0_2), .selector_MUX_9_BMEMORY_CTRLN_85_i0_1_0_3(selector_MUX_9_BMEMORY_CTRLN_85_i0_1_0_3), .selector_MUX_9_BMEMORY_CTRLN_85_i0_1_1_0(selector_MUX_9_BMEMORY_CTRLN_85_i0_1_1_0), .selector_MUX_9_BMEMORY_CTRLN_85_i0_1_1_1(selector_MUX_9_BMEMORY_CTRLN_85_i0_1_1_1), .selector_MUX_9_BMEMORY_CTRLN_85_i0_1_2_0(selector_MUX_9_BMEMORY_CTRLN_85_i0_1_2_0), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_10(wrenable_reg_10), .wrenable_reg_11(wrenable_reg_11), .wrenable_reg_12(wrenable_reg_12), .wrenable_reg_13(wrenable_reg_13), .wrenable_reg_14(wrenable_reg_14), .wrenable_reg_15(wrenable_reg_15), .wrenable_reg_16(wrenable_reg_16), .wrenable_reg_17(wrenable_reg_17), .wrenable_reg_18(wrenable_reg_18), .wrenable_reg_19(wrenable_reg_19), .wrenable_reg_2(wrenable_reg_2), .wrenable_reg_20(wrenable_reg_20), .wrenable_reg_21(wrenable_reg_21), .wrenable_reg_22(wrenable_reg_22), .wrenable_reg_23(wrenable_reg_23), .wrenable_reg_24(wrenable_reg_24), .wrenable_reg_25(wrenable_reg_25), .wrenable_reg_26(wrenable_reg_26), .wrenable_reg_27(wrenable_reg_27), .wrenable_reg_28(wrenable_reg_28), .wrenable_reg_29(wrenable_reg_29), .wrenable_reg_3(wrenable_reg_3), .wrenable_reg_30(wrenable_reg_30), .wrenable_reg_31(wrenable_reg_31), .wrenable_reg_32(wrenable_reg_32), .wrenable_reg_33(wrenable_reg_33), .wrenable_reg_34(wrenable_reg_34), .wrenable_reg_35(wrenable_reg_35), .wrenable_reg_36(wrenable_reg_36), .wrenable_reg_37(wrenable_reg_37), .wrenable_reg_38(wrenable_reg_38), .wrenable_reg_39(wrenable_reg_39), .wrenable_reg_4(wrenable_reg_4), .wrenable_reg_40(wrenable_reg_40), .wrenable_reg_41(wrenable_reg_41), .wrenable_reg_42(wrenable_reg_42), .wrenable_reg_43(wrenable_reg_43), .wrenable_reg_44(wrenable_reg_44), .wrenable_reg_5(wrenable_reg_5), .wrenable_reg_6(wrenable_reg_6), .wrenable_reg_7(wrenable_reg_7), .wrenable_reg_8(wrenable_reg_8), .wrenable_reg_9(wrenable_reg_9));
  flipflop_AR #(.BITSIZE_in1(1), .BITSIZE_out1(1)) done_delayed_REG (.out1(done_delayed_REG_signal_out), .clock(clock), .reset(reset), .in1(done_delayed_REG_signal_in));
  // io-signal post fix
  assign done_port = done_delayed_REG_signal_out;

endmodule

// Datapath RTL description for main
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module datapath_main(clock, reset, S_oe_ram, S_we_ram, S_addr_ram, S_Wdata_ram, S_data_ram_size, M_Rdata_ram, M_DataRdy, Sin_Rdata_ram, Sin_DataRdy, Sout_Rdata_ram, Sout_DataRdy, Min_oe_ram, Min_we_ram, Min_addr_ram, Min_Wdata_ram, Min_data_ram_size, Mout_oe_ram, Mout_we_ram, Mout_addr_ram, Mout_Wdata_ram, Mout_data_ram_size, selector_IN_UNBOUNDED_main_28866_29484, selector_MUX_2_dijkstraF_6_i0_0_0_0, wrenable_reg_0, OUT_UNBOUNDED_main_28866_29484);
  parameter MEM_var_28859_28863=1024, MEM_var_28861_28866=512;
  // IN
  input clock;
  input reset;
  input [1:0] S_oe_ram;
  input [1:0] S_we_ram;
  input [21:0] S_addr_ram;
  input [15:0] S_Wdata_ram;
  input [7:0] S_data_ram_size;
  input [15:0] M_Rdata_ram;
  input [1:0] M_DataRdy;
  input [15:0] Sin_Rdata_ram;
  input [1:0] Sin_DataRdy;
  input [1:0] Min_oe_ram;
  input [1:0] Min_we_ram;
  input [21:0] Min_addr_ram;
  input [15:0] Min_Wdata_ram;
  input [7:0] Min_data_ram_size;
  input selector_IN_UNBOUNDED_main_28866_29484;
  input selector_MUX_2_dijkstraF_6_i0_0_0_0;
  input wrenable_reg_0;
  // OUT
  output [15:0] Sout_Rdata_ram;
  output [1:0] Sout_DataRdy;
  output [1:0] Mout_oe_ram;
  output [1:0] Mout_we_ram;
  output [21:0] Mout_addr_ram;
  output [15:0] Mout_Wdata_ram;
  output [7:0] Mout_data_ram_size;
  output OUT_UNBOUNDED_main_28866_29484;
  // Component and signal declarations
  wire [7:0] null_out_signal_array_28861_0_out1_0;
  wire [7:0] null_out_signal_array_28861_0_out1_1;
  wire [7:0] null_out_signal_array_28861_0_proxy_out1_0;
  wire [7:0] null_out_signal_array_28861_0_proxy_out1_1;
  wire [31:0] out_MUX_2_dijkstraF_6_i0_0_0_0;
  wire [10:0] out_UUdata_converter_FU_4_i0_fu_main_28866_29742;
  wire [10:0] out_addr_expr_FU_3_i0_fu_main_28866_29707;
  wire [10:0] out_const_0;
  wire [31:0] out_conv_out_UUdata_converter_FU_4_i0_fu_main_28866_29742_11_32;
  wire [31:0] out_conv_out_const_0_11_32;
  wire [31:0] out_conv_out_reg_0_reg_0_11_32;
  wire [10:0] out_reg_0_reg_0;
  wire s_done_fu_main_28866_29484;
  wire [15:0] sig_in_bus_mergerMout_Wdata_ram0_0;
  wire [21:0] sig_in_bus_mergerMout_addr_ram1_0;
  wire [7:0] sig_in_bus_mergerMout_data_ram_size2_0;
  wire [1:0] sig_in_bus_mergerMout_oe_ram3_0;
  wire [1:0] sig_in_bus_mergerMout_we_ram4_0;
  wire [1:0] sig_in_bus_mergerSout_DataRdy5_0;
  wire [1:0] sig_in_bus_mergerSout_DataRdy5_1;
  wire [15:0] sig_in_bus_mergerSout_Rdata_ram6_0;
  wire [15:0] sig_in_bus_mergerSout_Rdata_ram6_1;
  wire [15:0] sig_in_vector_bus_mergerMout_Wdata_ram0_0;
  wire [21:0] sig_in_vector_bus_mergerMout_addr_ram1_0;
  wire [7:0] sig_in_vector_bus_mergerMout_data_ram_size2_0;
  wire [1:0] sig_in_vector_bus_mergerMout_oe_ram3_0;
  wire [1:0] sig_in_vector_bus_mergerMout_we_ram4_0;
  wire [1:0] sig_in_vector_bus_mergerSout_DataRdy5_0;
  wire [1:0] sig_in_vector_bus_mergerSout_DataRdy5_1;
  wire [15:0] sig_in_vector_bus_mergerSout_Rdata_ram6_0;
  wire [15:0] sig_in_vector_bus_mergerSout_Rdata_ram6_1;
  wire [15:0] sig_out_bus_mergerMout_Wdata_ram0_;
  wire [21:0] sig_out_bus_mergerMout_addr_ram1_;
  wire [7:0] sig_out_bus_mergerMout_data_ram_size2_;
  wire [1:0] sig_out_bus_mergerMout_oe_ram3_;
  wire [1:0] sig_out_bus_mergerMout_we_ram4_;
  wire [1:0] sig_out_bus_mergerSout_DataRdy5_;
  wire [15:0] sig_out_bus_mergerSout_Rdata_ram6_;
  
  MUX_GATE #(.BITSIZE_in1(32), .BITSIZE_in2(32), .BITSIZE_out1(32)) MUX_2_dijkstraF_6_i0_0_0_0 (.out1(out_MUX_2_dijkstraF_6_i0_0_0_0), .sel(selector_MUX_2_dijkstraF_6_i0_0_0_0), .in1(out_conv_out_reg_0_reg_0_11_32), .in2(out_conv_out_UUdata_converter_FU_4_i0_fu_main_28866_29742_11_32));
  ARRAY_1D_STD_BRAM_NN_SDS_BUS #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(11), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_S_oe_ram(1), .PORTSIZE_S_oe_ram(2), .BITSIZE_S_we_ram(1), .PORTSIZE_S_we_ram(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_S_addr_ram(11), .PORTSIZE_S_addr_ram(2), .BITSIZE_S_Wdata_ram(8), .PORTSIZE_S_Wdata_ram(2), .BITSIZE_Sin_Rdata_ram(8), .PORTSIZE_Sin_Rdata_ram(2), .BITSIZE_Sout_Rdata_ram(8), .PORTSIZE_Sout_Rdata_ram(2), .BITSIZE_S_data_ram_size(4), .PORTSIZE_S_data_ram_size(2), .BITSIZE_Sin_DataRdy(1), .PORTSIZE_Sin_DataRdy(2), .BITSIZE_Sout_DataRdy(1), .PORTSIZE_Sout_DataRdy(2), .MEMORY_INIT_file("array_ref_28861.mem"), .n_elements(324), .data_size(8), .address_space_begin(MEM_var_28861_28866), .address_space_rangesize(512), .BUS_PIPELINED(1), .BRAM_BITSIZE(8), .PRIVATE_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(11), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) array_28861_0 (.out1({null_out_signal_array_28861_0_out1_1, null_out_signal_array_28861_0_out1_0}), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram6_0), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy5_0), .proxy_out1({null_out_signal_array_28861_0_proxy_out1_1, null_out_signal_array_28861_0_proxy_out1_0}), .clock(clock), .reset(reset), .in1({8'b00000000, 8'b00000000}), .in2({11'b00000000000, 11'b00000000000}), .in3({4'b0000, 4'b0000}), .in4({1'b0, 1'b0}), .sel_LOAD({1'b0, 1'b0}), .sel_STORE({1'b0, 1'b0}), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1({8'b00000000, 8'b00000000}), .proxy_in2({11'b00000000000, 11'b00000000000}), .proxy_in3({4'b0000, 4'b0000}), .proxy_sel_LOAD({1'b0, 1'b0}), .proxy_sel_STORE({1'b0, 1'b0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerMout_Wdata_ram0_ (.out1(sig_out_bus_mergerMout_Wdata_ram0_), .in1({sig_in_bus_mergerMout_Wdata_ram0_0}));
  bus_merger #(.BITSIZE_in1(22), .PORTSIZE_in1(1), .BITSIZE_out1(22)) bus_mergerMout_addr_ram1_ (.out1(sig_out_bus_mergerMout_addr_ram1_), .in1({sig_in_bus_mergerMout_addr_ram1_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerMout_data_ram_size2_ (.out1(sig_out_bus_mergerMout_data_ram_size2_), .in1({sig_in_bus_mergerMout_data_ram_size2_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerMout_oe_ram3_ (.out1(sig_out_bus_mergerMout_oe_ram3_), .in1({sig_in_bus_mergerMout_oe_ram3_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerMout_we_ram4_ (.out1(sig_out_bus_mergerMout_we_ram4_), .in1({sig_in_bus_mergerMout_we_ram4_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(2), .BITSIZE_out1(2)) bus_mergerSout_DataRdy5_ (.out1(sig_out_bus_mergerSout_DataRdy5_), .in1({sig_in_bus_mergerSout_DataRdy5_1, sig_in_bus_mergerSout_DataRdy5_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(2), .BITSIZE_out1(16)) bus_mergerSout_Rdata_ram6_ (.out1(sig_out_bus_mergerSout_Rdata_ram6_), .in1({sig_in_bus_mergerSout_Rdata_ram6_1, sig_in_bus_mergerSout_Rdata_ram6_0}));
  constant_value #(.BITSIZE_out1(11), .value(MEM_var_28861_28866)) const_0 (.out1(out_const_0));
  UUdata_converter_FU #(.BITSIZE_in1(11), .BITSIZE_out1(32)) conv_out_UUdata_converter_FU_4_i0_fu_main_28866_29742_11_32 (.out1(out_conv_out_UUdata_converter_FU_4_i0_fu_main_28866_29742_11_32), .in1(out_UUdata_converter_FU_4_i0_fu_main_28866_29742));
  UUdata_converter_FU #(.BITSIZE_in1(11), .BITSIZE_out1(32)) conv_out_const_0_11_32 (.out1(out_conv_out_const_0_11_32), .in1(out_const_0));
  UUdata_converter_FU #(.BITSIZE_in1(11), .BITSIZE_out1(32)) conv_out_reg_0_reg_0_11_32 (.out1(out_conv_out_reg_0_reg_0_11_32), .in1(out_reg_0_reg_0));
  dijkstraF #(.MEM_var_28859_28863(MEM_var_28859_28863)) fu_main_28866_29484 (.done_port(s_done_fu_main_28866_29484), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram6_1), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy5_1), .Mout_oe_ram(sig_in_vector_bus_mergerMout_oe_ram3_0), .Mout_we_ram(sig_in_vector_bus_mergerMout_we_ram4_0), .Mout_addr_ram(sig_in_vector_bus_mergerMout_addr_ram1_0), .Mout_Wdata_ram(sig_in_vector_bus_mergerMout_Wdata_ram0_0), .Mout_data_ram_size(sig_in_vector_bus_mergerMout_data_ram_size2_0), .clock(clock), .reset(reset), .start_port(selector_IN_UNBOUNDED_main_28866_29484), .a(out_MUX_2_dijkstraF_6_i0_0_0_0), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .S_data_ram_size(S_data_ram_size), .M_Rdata_ram(M_Rdata_ram), .M_DataRdy(M_DataRdy), .Sin_Rdata_ram(Sin_Rdata_ram), .Sin_DataRdy(Sin_DataRdy), .Min_oe_ram(Min_oe_ram), .Min_we_ram(Min_we_ram), .Min_addr_ram(Min_addr_ram), .Min_Wdata_ram(Min_Wdata_ram), .Min_data_ram_size(Min_data_ram_size));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(11)) fu_main_28866_29707 (.out1(out_addr_expr_FU_3_i0_fu_main_28866_29707), .in1(out_conv_out_const_0_11_32));
  UUdata_converter_FU #(.BITSIZE_in1(11), .BITSIZE_out1(11)) fu_main_28866_29742 (.out1(out_UUdata_converter_FU_4_i0_fu_main_28866_29742), .in1(out_addr_expr_FU_3_i0_fu_main_28866_29707));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerMout_Wdata_ram0_0 (.out1(sig_in_bus_mergerMout_Wdata_ram0_0), .in1(sig_in_vector_bus_mergerMout_Wdata_ram0_0));
  join_signal #(.BITSIZE_in1(11), .PORTSIZE_in1(2), .BITSIZE_out1(22)) join_signalbus_mergerMout_addr_ram1_0 (.out1(sig_in_bus_mergerMout_addr_ram1_0), .in1(sig_in_vector_bus_mergerMout_addr_ram1_0));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerMout_data_ram_size2_0 (.out1(sig_in_bus_mergerMout_data_ram_size2_0), .in1(sig_in_vector_bus_mergerMout_data_ram_size2_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerMout_oe_ram3_0 (.out1(sig_in_bus_mergerMout_oe_ram3_0), .in1(sig_in_vector_bus_mergerMout_oe_ram3_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerMout_we_ram4_0 (.out1(sig_in_bus_mergerMout_we_ram4_0), .in1(sig_in_vector_bus_mergerMout_we_ram4_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerSout_DataRdy5_0 (.out1(sig_in_bus_mergerSout_DataRdy5_0), .in1(sig_in_vector_bus_mergerSout_DataRdy5_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerSout_DataRdy5_1 (.out1(sig_in_bus_mergerSout_DataRdy5_1), .in1(sig_in_vector_bus_mergerSout_DataRdy5_1));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerSout_Rdata_ram6_0 (.out1(sig_in_bus_mergerSout_Rdata_ram6_0), .in1(sig_in_vector_bus_mergerSout_Rdata_ram6_0));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerSout_Rdata_ram6_1 (.out1(sig_in_bus_mergerSout_Rdata_ram6_1), .in1(sig_in_vector_bus_mergerSout_Rdata_ram6_1));
  register_SE #(.BITSIZE_in1(11), .BITSIZE_out1(11)) reg_0 (.out1(out_reg_0_reg_0), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_4_i0_fu_main_28866_29742), .wenable(wrenable_reg_0));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerMout_Wdata_ram0_ (.out1(Mout_Wdata_ram), .in1(sig_out_bus_mergerMout_Wdata_ram0_));
  split_signal #(.BITSIZE_in1(22), .BITSIZE_out1(11), .PORTSIZE_out1(2)) split_signalbus_mergerMout_addr_ram1_ (.out1(Mout_addr_ram), .in1(sig_out_bus_mergerMout_addr_ram1_));
  split_signal #(.BITSIZE_in1(8), .BITSIZE_out1(4), .PORTSIZE_out1(2)) split_signalbus_mergerMout_data_ram_size2_ (.out1(Mout_data_ram_size), .in1(sig_out_bus_mergerMout_data_ram_size2_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerMout_oe_ram3_ (.out1(Mout_oe_ram), .in1(sig_out_bus_mergerMout_oe_ram3_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerMout_we_ram4_ (.out1(Mout_we_ram), .in1(sig_out_bus_mergerMout_we_ram4_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerSout_DataRdy5_ (.out1(Sout_DataRdy), .in1(sig_out_bus_mergerSout_DataRdy5_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerSout_Rdata_ram6_ (.out1(Sout_Rdata_ram), .in1(sig_out_bus_mergerSout_Rdata_ram6_));
  // io-signal post fix
  assign OUT_UNBOUNDED_main_28866_29484 = s_done_fu_main_28866_29484;

endmodule

// FSM based controller description for main
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module controller_main(done_port, selector_IN_UNBOUNDED_main_28866_29484, selector_MUX_2_dijkstraF_6_i0_0_0_0, wrenable_reg_0, OUT_UNBOUNDED_main_28866_29484, clock, reset, start_port);
  // IN
  input OUT_UNBOUNDED_main_28866_29484;
  input clock;
  input reset;
  input start_port;
  // OUT
  output done_port;
  output selector_IN_UNBOUNDED_main_28866_29484;
  output selector_MUX_2_dijkstraF_6_i0_0_0_0;
  output wrenable_reg_0;
  parameter [1:0] S_0 = 2'd0,
    S_1 = 2'd1,
    S_2 = 2'd2;
  reg [1:0] _present_state, _next_state;
  reg done_port;
  reg selector_IN_UNBOUNDED_main_28866_29484;
  reg selector_MUX_2_dijkstraF_6_i0_0_0_0;
  reg wrenable_reg_0;
  
  always @(posedge clock)
    if (reset == 1'b0) _present_state <= S_0;
    else _present_state <= _next_state;
  
  always @(*)
  begin
    done_port = 1'b0;
    selector_IN_UNBOUNDED_main_28866_29484 = 1'b0;
    selector_MUX_2_dijkstraF_6_i0_0_0_0 = 1'b0;
    wrenable_reg_0 = 1'b0;
    case (_present_state)
      S_0 :
        if(start_port == 1'b1)
        begin
          selector_IN_UNBOUNDED_main_28866_29484 = 1'b1;
          wrenable_reg_0 = 1'b1;
          if (OUT_UNBOUNDED_main_28866_29484 == 1'b0)
            begin
              _next_state = S_1;
            end
          else
            begin
              _next_state = S_2;
              done_port = 1'b1;
            end
        end
        else
        begin
          selector_MUX_2_dijkstraF_6_i0_0_0_0 = 1'bX;
          wrenable_reg_0 = 1'bX;
          _next_state = S_0;
        end
      S_1 :
        begin
          selector_MUX_2_dijkstraF_6_i0_0_0_0 = 1'b1;
          if (OUT_UNBOUNDED_main_28866_29484 == 1'b0)
            begin
              _next_state = S_1;
            end
          else
            begin
              _next_state = S_2;
              done_port = 1'b1;
            end
        end
      S_2 :
        begin
          _next_state = S_0;
        end
      default :
        begin
          _next_state = S_0;
          selector_MUX_2_dijkstraF_6_i0_0_0_0 = 1'bX;
          wrenable_reg_0 = 1'bX;
        end
    endcase
  end
endmodule

// Top component for main
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module _main(clock, reset, start_port, done_port, S_oe_ram, S_we_ram, S_addr_ram, S_Wdata_ram, S_data_ram_size, M_Rdata_ram, M_DataRdy, Sin_Rdata_ram, Sin_DataRdy, Min_oe_ram, Min_we_ram, Min_addr_ram, Min_Wdata_ram, Min_data_ram_size, Sout_Rdata_ram, Sout_DataRdy, Mout_oe_ram, Mout_we_ram, Mout_addr_ram, Mout_Wdata_ram, Mout_data_ram_size);
  parameter MEM_var_28859_28863=1024, MEM_var_28861_28866=512;
  // IN
  input clock;
  input reset;
  input start_port;
  input [1:0] S_oe_ram;
  input [1:0] S_we_ram;
  input [21:0] S_addr_ram;
  input [15:0] S_Wdata_ram;
  input [7:0] S_data_ram_size;
  input [15:0] M_Rdata_ram;
  input [1:0] M_DataRdy;
  input [15:0] Sin_Rdata_ram;
  input [1:0] Sin_DataRdy;
  input [1:0] Min_oe_ram;
  input [1:0] Min_we_ram;
  input [21:0] Min_addr_ram;
  input [15:0] Min_Wdata_ram;
  input [7:0] Min_data_ram_size;
  // OUT
  output done_port;
  output [15:0] Sout_Rdata_ram;
  output [1:0] Sout_DataRdy;
  output [1:0] Mout_oe_ram;
  output [1:0] Mout_we_ram;
  output [21:0] Mout_addr_ram;
  output [15:0] Mout_Wdata_ram;
  output [7:0] Mout_data_ram_size;
  // Component and signal declarations
  wire OUT_UNBOUNDED_main_28866_29484;
  wire done_delayed_REG_signal_in;
  wire done_delayed_REG_signal_out;
  wire selector_IN_UNBOUNDED_main_28866_29484;
  wire selector_MUX_2_dijkstraF_6_i0_0_0_0;
  wire wrenable_reg_0;
  
  controller_main Controller_i (.done_port(done_delayed_REG_signal_in), .selector_IN_UNBOUNDED_main_28866_29484(selector_IN_UNBOUNDED_main_28866_29484), .selector_MUX_2_dijkstraF_6_i0_0_0_0(selector_MUX_2_dijkstraF_6_i0_0_0_0), .wrenable_reg_0(wrenable_reg_0), .OUT_UNBOUNDED_main_28866_29484(OUT_UNBOUNDED_main_28866_29484), .clock(clock), .reset(reset), .start_port(start_port));
  datapath_main #(.MEM_var_28859_28863(MEM_var_28859_28863), .MEM_var_28861_28866(MEM_var_28861_28866)) Datapath_i (.Sout_Rdata_ram(Sout_Rdata_ram), .Sout_DataRdy(Sout_DataRdy), .Mout_oe_ram(Mout_oe_ram), .Mout_we_ram(Mout_we_ram), .Mout_addr_ram(Mout_addr_ram), .Mout_Wdata_ram(Mout_Wdata_ram), .Mout_data_ram_size(Mout_data_ram_size), .OUT_UNBOUNDED_main_28866_29484(OUT_UNBOUNDED_main_28866_29484), .clock(clock), .reset(reset), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .S_data_ram_size(S_data_ram_size), .M_Rdata_ram(M_Rdata_ram), .M_DataRdy(M_DataRdy), .Sin_Rdata_ram(Sin_Rdata_ram), .Sin_DataRdy(Sin_DataRdy), .Min_oe_ram(Min_oe_ram), .Min_we_ram(Min_we_ram), .Min_addr_ram(Min_addr_ram), .Min_Wdata_ram(Min_Wdata_ram), .Min_data_ram_size(Min_data_ram_size), .selector_IN_UNBOUNDED_main_28866_29484(selector_IN_UNBOUNDED_main_28866_29484), .selector_MUX_2_dijkstraF_6_i0_0_0_0(selector_MUX_2_dijkstraF_6_i0_0_0_0), .wrenable_reg_0(wrenable_reg_0));
  flipflop_AR #(.BITSIZE_in1(1), .BITSIZE_out1(1)) done_delayed_REG (.out1(done_delayed_REG_signal_out), .clock(clock), .reset(reset), .in1(done_delayed_REG_signal_in));
  // io-signal post fix
  assign done_port = done_delayed_REG_signal_out;

endmodule

// Minimal interface for function: main
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module main(clock, reset, start_port, S_oe_ram, S_we_ram, S_addr_ram, S_Wdata_ram, S_data_ram_size, M_Rdata_ram, M_DataRdy, done_port, Sout_Rdata_ram, Sout_DataRdy, Mout_oe_ram, Mout_we_ram, Mout_addr_ram, Mout_Wdata_ram, Mout_data_ram_size);
  parameter MEM_var_28859_28863=1024, MEM_var_28861_28866=512;
  // IN
  input clock;
  input reset;
  input start_port;
  input [1:0] S_oe_ram;
  input [1:0] S_we_ram;
  input [21:0] S_addr_ram;
  input [15:0] S_Wdata_ram;
  input [7:0] S_data_ram_size;
  input [15:0] M_Rdata_ram;
  input [1:0] M_DataRdy;
  // OUT
  output done_port;
  output [15:0] Sout_Rdata_ram;
  output [1:0] Sout_DataRdy;
  output [1:0] Mout_oe_ram;
  output [1:0] Mout_we_ram;
  output [21:0] Mout_addr_ram;
  output [15:0] Mout_Wdata_ram;
  output [7:0] Mout_data_ram_size;
  // Component and signal declarations
  
  _main #(.MEM_var_28859_28863(MEM_var_28859_28863), .MEM_var_28861_28866(MEM_var_28861_28866)) _main_i0 (.done_port(done_port), .Sout_Rdata_ram(Sout_Rdata_ram), .Sout_DataRdy(Sout_DataRdy), .Mout_oe_ram(Mout_oe_ram), .Mout_we_ram(Mout_we_ram), .Mout_addr_ram(Mout_addr_ram), .Mout_Wdata_ram(Mout_Wdata_ram), .Mout_data_ram_size(Mout_data_ram_size), .clock(clock), .reset(reset), .start_port(start_port), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .S_data_ram_size(S_data_ram_size), .M_Rdata_ram(M_Rdata_ram), .M_DataRdy(M_DataRdy), .Sin_Rdata_ram({8'b00000000, 8'b00000000}), .Sin_DataRdy({1'b0, 1'b0}), .Min_oe_ram({1'b0, 1'b0}), .Min_we_ram({1'b0, 1'b0}), .Min_addr_ram({11'b00000000000, 11'b00000000000}), .Min_Wdata_ram({8'b00000000, 8'b00000000}), .Min_data_ram_size({4'b0000, 4'b0000}));

endmodule


