
########## Tcl recorder starts at 11/05/24 23:37:31 ##########

set version "2.1"
set proj_dir "C:/Users/Yasuno/Documents/dev/ev68020/pld/ispLSI2096/ev68020_arbiter_ispLSI2096E_100LQ128"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Hierarchy
if [runCmd "\"$cpld_bin/sch2jhd\" \"arbiter_top.sch\" "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 11/05/24 23:37:31 ###########


########## Tcl recorder starts at 11/05/24 23:39:39 ##########

# Commands to make the Process: 
# Hierarchy
if [runCmd "\"$cpld_bin/sch2jhd\" \"arbiter_top.sch\" "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 11/05/24 23:39:39 ###########


########## Tcl recorder starts at 11/05/24 23:39:55 ##########

# Commands to make the Process: 
# Merged EDIF Netlist
if [runCmd "\"$cpld_bin/edifnets\" -ext=.edn -bracket -family=PLSI -map -root -external_primitives -top arbiter_top.sch"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [catch {open ev68020_arbiter.efl w} rspFile] {
	puts stderr "Cannot create response file ev68020_arbiter.efl: $rspFile"
} else {
	puts $rspFile "arbiter_top.edn
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/edfmerge\" -i ev68020_arbiter.efl -prj arbiter_top -inc \"$install_dir/ispcpld/plsi/map/plsi_bse.ecf\" -flib \"$install_dir/ispcpld/plsi/map/plsi_map.ecf\" -fixname -family plsi -o ev68020_arbiter.emf"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
file delete ev68020_arbiter.efl

########## Tcl recorder end at 11/05/24 23:39:55 ###########


########## Tcl recorder starts at 11/05/24 23:39:57 ##########

# Commands to make the Process: 
# Constraint Editor
if [runCmd "\"$cpld_bin/syndpm\" -i ev68020_arbiter.emf -if edif -p ispLSI2096E-100LQ128 -pre "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$install_dir/ispcomp/bin/impsrclever\" -prj ev68020_arbiter -log ev68020_arbiter.ir0 "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
# Application to view the Process: 
# Constraint Editor
if [catch {open ce.rsp w} rspFile] {
	puts stderr "Cannot create response file ce.rsp: $rspFile"
} else {
	puts $rspFile "-devfile \"$install_dir/ispcpld/data/lc2k/le2096_128q.dev\"
-lci ev68020_arbiter.lct
-touch ev68020_arbiter.ir0
-src ev68020_arbiter.emf
-type EDIF
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/lciedit\" @ce.rsp"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 11/05/24 23:39:57 ###########


########## Tcl recorder starts at 11/05/24 23:41:05 ##########

# Commands to make the Process: 
# Hierarchy
if [runCmd "\"$cpld_bin/sch2jhd\" \"arbiter_top.sch\" "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 11/05/24 23:41:05 ###########


########## Tcl recorder starts at 11/05/24 23:42:04 ##########

# Commands to make the Process: 
# Hierarchy
if [runCmd "\"$cpld_bin/sch2jhd\" \"arbiter_top.sch\" "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 11/05/24 23:42:04 ###########


########## Tcl recorder starts at 11/05/24 23:43:14 ##########

# Commands to make the Process: 
# Constraint Editor
if [runCmd "\"$cpld_bin/edifnets\" -ext=.edn -bracket -family=PLSI -map -root -external_primitives -top arbiter_top.sch"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [catch {open ev68020_arbiter.efl w} rspFile] {
	puts stderr "Cannot create response file ev68020_arbiter.efl: $rspFile"
} else {
	puts $rspFile "arbiter_top.edn
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/edfmerge\" -i ev68020_arbiter.efl -prj arbiter_top -inc \"$install_dir/ispcpld/plsi/map/plsi_bse.ecf\" -flib \"$install_dir/ispcpld/plsi/map/plsi_map.ecf\" -fixname -family plsi -o ev68020_arbiter.emf"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
file delete ev68020_arbiter.efl
if [runCmd "\"$cpld_bin/syndpm\" -i ev68020_arbiter.emf -if edif -p ispLSI2096E-100LQ128 -pre "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$install_dir/ispcomp/bin/impsrclever\" -prj ev68020_arbiter -log ev68020_arbiter.ir0 "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
# Application to view the Process: 
# Constraint Editor
if [catch {open ce.rsp w} rspFile] {
	puts stderr "Cannot create response file ce.rsp: $rspFile"
} else {
	puts $rspFile "-devfile \"$install_dir/ispcpld/data/lc2k/le2096_128q.dev\"
-lci ev68020_arbiter.lct
-touch ev68020_arbiter.ir0
-src ev68020_arbiter.emf
-type EDIF
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/lciedit\" @ce.rsp"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 11/05/24 23:43:14 ###########


########## Tcl recorder starts at 11/05/24 23:46:11 ##########

# Commands to make the Process: 
# Hierarchy
if [runCmd "\"$cpld_bin/sch2jhd\" \"arbiter_top.sch\" "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 11/05/24 23:46:11 ###########


########## Tcl recorder starts at 11/05/24 23:53:28 ##########

# Commands to make the Process: 
# Hierarchy
if [runCmd "\"$cpld_bin/sch2jhd\" \"arbiter_top.sch\" "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 11/05/24 23:53:28 ###########


########## Tcl recorder starts at 11/05/24 23:55:57 ##########

# Commands to make the Process: 
# Hierarchy
if [runCmd "\"$cpld_bin/sch2jhd\" \"arbiter_top.sch\" "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 11/05/24 23:55:57 ###########


########## Tcl recorder starts at 11/05/24 23:56:44 ##########

# Commands to make the Process: 
# Hierarchy
if [runCmd "\"$cpld_bin/sch2jhd\" \"arbiter_top.sch\" "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 11/05/24 23:56:44 ###########


########## Tcl recorder starts at 11/06/24 00:08:04 ##########

# Commands to make the Process: 
# Hierarchy
if [runCmd "\"$cpld_bin/sch2jhd\" \"arbiter_top.sch\" "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 11/06/24 00:08:04 ###########


########## Tcl recorder starts at 11/06/24 00:16:09 ##########

# Commands to make the Process: 
# Hierarchy
if [runCmd "\"$cpld_bin/sch2jhd\" \"arbiter_top.sch\" "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 11/06/24 00:16:09 ###########


########## Tcl recorder starts at 11/06/24 00:29:47 ##########

# Commands to make the Process: 
# Hierarchy
if [runCmd "\"$cpld_bin/sch2jhd\" \"arbiter_top.sch\" "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 11/06/24 00:29:47 ###########


########## Tcl recorder starts at 11/06/24 00:30:54 ##########

# Commands to make the Process: 
# Hierarchy
if [runCmd "\"$cpld_bin/sch2jhd\" \"arbiter_top.sch\" "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 11/06/24 00:30:55 ###########


########## Tcl recorder starts at 11/06/24 00:31:17 ##########

# Commands to make the Process: 
# Merged EDIF Netlist
if [runCmd "\"$cpld_bin/edifnets\" -ext=.edn -bracket -family=PLSI -map -root -external_primitives -top arbiter_top.sch"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [catch {open ev68020_arbiter.efl w} rspFile] {
	puts stderr "Cannot create response file ev68020_arbiter.efl: $rspFile"
} else {
	puts $rspFile "arbiter_top.edn
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/edfmerge\" -i ev68020_arbiter.efl -prj arbiter_top -inc \"$install_dir/ispcpld/plsi/map/plsi_bse.ecf\" -flib \"$install_dir/ispcpld/plsi/map/plsi_map.ecf\" -fixname -family plsi -o ev68020_arbiter.emf"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
file delete ev68020_arbiter.efl

########## Tcl recorder end at 11/06/24 00:31:17 ###########


########## Tcl recorder starts at 11/06/24 00:31:20 ##########

# Commands to make the Process: 
# Constraint Editor
if [runCmd "\"$cpld_bin/syndpm\" -i ev68020_arbiter.emf -if edif -p ispLSI2096E-100LQ128 -pre "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$install_dir/ispcomp/bin/impsrclever\" -prj ev68020_arbiter -log ev68020_arbiter.ir0 "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
# Application to view the Process: 
# Constraint Editor
if [catch {open ce.rsp w} rspFile] {
	puts stderr "Cannot create response file ce.rsp: $rspFile"
} else {
	puts $rspFile "-devfile \"$install_dir/ispcpld/data/lc2k/le2096_128q.dev\"
-lci ev68020_arbiter.lct
-touch ev68020_arbiter.ir0
-src ev68020_arbiter.emf
-type EDIF
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/lciedit\" @ce.rsp"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 11/06/24 00:31:21 ###########


########## Tcl recorder starts at 11/06/24 00:43:36 ##########

# Commands to make the Process: 
# Fit Design
if [runCmd "\"$cpld_bin/syndpm\" -i ev68020_arbiter.emf -if edif -prop ev68020_arbiter.prp -p ispLSI2096E-100LQ128 -pre "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$install_dir/ispcomp/bin/impsrclever\" -prj ev68020_arbiter -log ev68020_arbiter.irs -noPrp"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/syndpm\" -i ev68020_arbiter.laf -if laf -p ispLSI2096E-100LQ128 -pd \"$proj_dir\"  -of vhdl -of verilog"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/synsvf\" -exe \"$install_dir/ispvmsystem/ispufw\" -prj ev68020_arbiter -if ev68020_arbiter.jed -j2s -log ev68020_arbiter.svl "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 11/06/24 00:43:36 ###########


########## Tcl recorder starts at 11/06/24 00:44:21 ##########

# Commands to make the Process: 
# Timing Analysis
if [runCmd "\"$cpld_bin/synta\" -proj ev68020_arbiter -pd \"$proj_dir\" -dpm_only "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 11/06/24 00:44:21 ###########


########## Tcl recorder starts at 11/06/24 00:45:14 ##########

# Commands to make the Process: 
# Generate Board-level Stamp Model
if [runCmd "\"$cpld_bin/stamppar\" -i ev68020_arbiter   -log automake.err -target ispLSI"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 11/06/24 00:45:14 ###########


########## Tcl recorder starts at 11/06/24 00:47:59 ##########

# Commands to make the Process: 
# Merged EDIF Netlist
if [runCmd "\"$cpld_bin/edifnets\" -ext=.edn -bracket -family=PLSI -map -root -external_primitives -top arbiter_top.sch"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [catch {open ev68020_arbiter.efl w} rspFile] {
	puts stderr "Cannot create response file ev68020_arbiter.efl: $rspFile"
} else {
	puts $rspFile "arbiter_top.edn
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/edfmerge\" -i ev68020_arbiter.efl -prj arbiter_top -inc \"$install_dir/ispcpld/plsi/map/plsi_bse.ecf\" -flib \"$install_dir/ispcpld/plsi/map/plsi_map.ecf\" -fixname -family plsi -o ev68020_arbiter.emf"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
file delete ev68020_arbiter.efl

########## Tcl recorder end at 11/06/24 00:47:59 ###########


########## Tcl recorder starts at 11/06/24 00:48:02 ##########

# Commands to make the Process: 
# Constraint Editor
if [runCmd "\"$cpld_bin/syndpm\" -i ev68020_arbiter.emf -if edif -p ispLSI2096A-100LQ128 -pre "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$install_dir/ispcomp/bin/impsrclever\" -prj ev68020_arbiter -log ev68020_arbiter.ir0 "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
# Application to view the Process: 
# Constraint Editor
if [catch {open ce.rsp w} rspFile] {
	puts stderr "Cannot create response file ce.rsp: $rspFile"
} else {
	puts $rspFile "-devfile \"$install_dir/ispcpld/data/lc2k/la2096_128q.dev\"
-lci ev68020_arbiter.lct
-touch ev68020_arbiter.ir0
-src ev68020_arbiter.emf
-type EDIF
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/lciedit\" @ce.rsp"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 11/06/24 00:48:02 ###########


########## Tcl recorder starts at 11/06/24 00:48:41 ##########

# Commands to make the Process: 
# Fit Design
if [runCmd "\"$install_dir/ispcomp/bin/impsrclever\" -prj ev68020_arbiter -log ev68020_arbiter.irs -noPrp"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/syndpm\" -i ev68020_arbiter.laf -if laf -p ispLSI2096A-100LQ128 -pd \"$proj_dir\"  -of vhdl -of verilog"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/synsvf\" -exe \"$install_dir/ispvmsystem/ispufw\" -prj ev68020_arbiter -if ev68020_arbiter.jed -j2s -log ev68020_arbiter.svl "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 11/06/24 00:48:41 ###########


########## Tcl recorder starts at 11/06/24 00:48:58 ##########

# Commands to make the Process: 
# Timing Analysis
if [runCmd "\"$cpld_bin/synta\" -proj ev68020_arbiter -pd \"$proj_dir\" -dpm_only "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 11/06/24 00:48:58 ###########


########## Tcl recorder starts at 11/06/24 00:49:04 ##########

# Commands to make the Process: 
# Generate Board-level Stamp Model
if [runCmd "\"$cpld_bin/stamppar\" -i ev68020_arbiter   -log automake.err -target ispLSI"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 11/06/24 00:49:04 ###########


########## Tcl recorder starts at 11/06/24 00:52:46 ##########

# Commands to make the Process: 
# Constraint Editor
# - none -
# Application to view the Process: 
# Constraint Editor
if [catch {open ce.rsp w} rspFile] {
	puts stderr "Cannot create response file ce.rsp: $rspFile"
} else {
	puts $rspFile "-devfile \"$install_dir/ispcpld/data/lc2k/la2096_128q.dev\"
-lci ev68020_arbiter.lct
-touch ev68020_arbiter.ir0
-src ev68020_arbiter.emf
-type EDIF
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/lciedit\" @ce.rsp"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 11/06/24 00:52:46 ###########


########## Tcl recorder starts at 11/09/24 04:33:02 ##########

# Commands to make the Process: 
# Constraint Editor
# - none -
# Application to view the Process: 
# Constraint Editor
if [catch {open ce.rsp w} rspFile] {
	puts stderr "Cannot create response file ce.rsp: $rspFile"
} else {
	puts $rspFile "-devfile \"$install_dir/ispcpld/data/lc2k/la2096_128q.dev\"
-lci ev68020_arbiter.lct
-touch ev68020_arbiter.ir0
-src ev68020_arbiter.emf
-type EDIF
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/lciedit\" @ce.rsp"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 11/09/24 04:33:02 ###########


########## Tcl recorder starts at 11/09/24 04:59:50 ##########

# Commands to make the Process: 
# Constraint Editor
# - none -
# Application to view the Process: 
# Constraint Editor
if [catch {open ce.rsp w} rspFile] {
	puts stderr "Cannot create response file ce.rsp: $rspFile"
} else {
	puts $rspFile "-devfile \"$install_dir/ispcpld/data/lc2k/la2096_128q.dev\"
-lci ev68020_arbiter.lct
-touch ev68020_arbiter.ir0
-src ev68020_arbiter.emf
-type EDIF
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/lciedit\" @ce.rsp"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 11/09/24 04:59:50 ###########


########## Tcl recorder starts at 11/09/24 05:06:30 ##########

# Commands to make the Process: 
# Fit Design
if [runCmd "\"$cpld_bin/syndpm\" -i ev68020_arbiter.emf -if edif -prop ev68020_arbiter.prp -p ispLSI2096A-100LQ128 -pre "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$install_dir/ispcomp/bin/impsrclever\" -prj ev68020_arbiter -log ev68020_arbiter.irs -noPrp"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/syndpm\" -i ev68020_arbiter.laf -if laf -p ispLSI2096A-100LQ128 -pd \"$proj_dir\"  -of vhdl -of verilog"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/synsvf\" -exe \"$install_dir/ispvmsystem/ispufw\" -prj ev68020_arbiter -if ev68020_arbiter.jed -j2s -log ev68020_arbiter.svl "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 11/09/24 05:06:30 ###########


########## Tcl recorder starts at 11/09/24 05:06:44 ##########

# Commands to make the Process: 
# Timing Analysis
if [runCmd "\"$cpld_bin/synta\" -proj ev68020_arbiter -pd \"$proj_dir\" -dpm_only "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 11/09/24 05:06:44 ###########


########## Tcl recorder starts at 11/09/24 05:06:50 ##########

# Commands to make the Process: 
# Generate Board-level Stamp Model
if [runCmd "\"$cpld_bin/stamppar\" -i ev68020_arbiter   -log automake.err -target ispLSI"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 11/09/24 05:06:50 ###########


########## Tcl recorder starts at 11/09/24 05:35:54 ##########

# Commands to make the Process: 
# Bus Signal Cross Reference
if [runCmd "\"$cpld_bin/vhdl\" -s -lib=lat_vhd arbiter_top.sch"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/exfgen.exe\" -vhd arbiter_top.vhd -out arbiter_top.exf"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 11/09/24 05:35:55 ###########


########## Tcl recorder starts at 11/10/24 20:59:56 ##########

# Commands to make the Process: 
# VHDL Test Bench Template
if [runCmd "\"$cpld_bin/vhdl\" -tarbiter_top.vht -s arbiter_top.sch"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 11/10/24 20:59:56 ###########


########## Tcl recorder starts at 11/10/24 21:08:36 ##########

# Commands to make the Process: 
# Constraint Editor
# - none -
# Application to view the Process: 
# Constraint Editor
if [catch {open ce.rsp w} rspFile] {
	puts stderr "Cannot create response file ce.rsp: $rspFile"
} else {
	puts $rspFile "-devfile \"$install_dir/ispcpld/data/lc2k/la2096_128q.dev\"
-lci ev68020_arbiter.lct
-touch ev68020_arbiter.ir0
-src ev68020_arbiter.emf
-type EDIF
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/lciedit\" @ce.rsp"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 11/10/24 21:08:36 ###########


########## Tcl recorder starts at 11/10/24 21:08:52 ##########

# Commands to make the Process: 
# Generate Board-level Stamp Model
if [runCmd "\"$install_dir/ispcomp/bin/impsrclever\" -prj ev68020_arbiter -log ev68020_arbiter.irs -noPrp"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/syndpm\" -i ev68020_arbiter.laf -if laf -p ispLSI2096A-100LQ128 -pd \"$proj_dir\"  -of vhdl -of verilog"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/synta\" -proj ev68020_arbiter -pd \"$proj_dir\" -dpm_only "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/stamppar\" -i ev68020_arbiter   -log automake.err -target ispLSI"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 11/10/24 21:08:52 ###########


########## Tcl recorder starts at 11/11/24 04:47:37 ##########

# Commands to make the Process: 
# Hierarchy
if [runCmd "\"$cpld_bin/sch2jhd\" \"arbiter_top.sch\" "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 11/11/24 04:47:37 ###########


########## Tcl recorder starts at 11/11/24 04:48:27 ##########

# Commands to make the Process: 
# Stamp Model Data File
if [runCmd "\"$cpld_bin/edifnets\" -ext=.edn -bracket -family=PLSI -map -root -external_primitives -top arbiter_top.sch"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [catch {open ev68020_arbiter.efl w} rspFile] {
	puts stderr "Cannot create response file ev68020_arbiter.efl: $rspFile"
} else {
	puts $rspFile "arbiter_top.edn
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/edfmerge\" -i ev68020_arbiter.efl -prj arbiter_top -inc \"$install_dir/ispcpld/plsi/map/plsi_bse.ecf\" -flib \"$install_dir/ispcpld/plsi/map/plsi_map.ecf\" -fixname -family plsi -o ev68020_arbiter.emf"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
file delete ev68020_arbiter.efl
if [runCmd "\"$cpld_bin/syndpm\" -i ev68020_arbiter.emf -if edif -p ispLSI2096A-100LQ128 -pre "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$install_dir/ispcomp/bin/impsrclever\" -prj ev68020_arbiter -log ev68020_arbiter.ir0 "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/syndpm\" -i ev68020_arbiter.emf -if edif -prop ev68020_arbiter.prp -p ispLSI2096A-100LQ128 -pre "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$install_dir/ispcomp/bin/impsrclever\" -prj ev68020_arbiter -log ev68020_arbiter.irs -noPrp"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/syndpm\" -i ev68020_arbiter.laf -if laf -p ispLSI2096A-100LQ128 -pd \"$proj_dir\"  -of vhdl -of verilog"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/synta\" -proj ev68020_arbiter -pd \"$proj_dir\" -dpm_only "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/stamppar\" -i ev68020_arbiter   -log automake.err -target ispLSI"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 11/11/24 04:48:27 ###########


########## Tcl recorder starts at 11/12/24 02:59:32 ##########

# Commands to make the Process: 
# Generate Board-level Stamp Model
if [runCmd "\"$cpld_bin/edifnets\" -ext=.edn -bracket -family=PLSI -map -root -external_primitives -top arbiter_top.sch"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [catch {open ev68020_arbiter.efl w} rspFile] {
	puts stderr "Cannot create response file ev68020_arbiter.efl: $rspFile"
} else {
	puts $rspFile "arbiter_top.edn
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/edfmerge\" -i ev68020_arbiter.efl -prj arbiter_top -inc \"$install_dir/ispcpld/plsi/map/plsi_bse.ecf\" -flib \"$install_dir/ispcpld/plsi/map/plsi_map.ecf\" -fixname -family plsi -o ev68020_arbiter.emf"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
file delete ev68020_arbiter.efl
if [runCmd "\"$cpld_bin/syndpm\" -i ev68020_arbiter.emf -if edif -p ispLSI2096A-100LQ128 -pre "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$install_dir/ispcomp/bin/impsrclever\" -prj ev68020_arbiter -log ev68020_arbiter.ir0 "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/syndpm\" -i ev68020_arbiter.emf -if edif -prop ev68020_arbiter.prp -p ispLSI2096A-100LQ128 -pre "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$install_dir/ispcomp/bin/impsrclever\" -prj ev68020_arbiter -log ev68020_arbiter.irs -noPrp"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/syndpm\" -i ev68020_arbiter.laf -if laf -p ispLSI2096A-100LQ128 -pd \"$proj_dir\"  -of vhdl -of verilog"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/synta\" -proj ev68020_arbiter -pd \"$proj_dir\" -dpm_only "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/stamppar\" -i ev68020_arbiter   -log automake.err -target ispLSI"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 11/12/24 02:59:32 ###########


########## Tcl recorder starts at 11/16/24 04:06:41 ##########

# Commands to make the Process: 
# Hierarchy
if [runCmd "\"$cpld_bin/sch2jhd\" \"arbiter_top.sch\" "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 11/16/24 04:06:41 ###########


########## Tcl recorder starts at 11/16/24 04:06:48 ##########

# Commands to make the Process: 
# Constraint Editor
if [runCmd "\"$cpld_bin/edifnets\" -ext=.edn -bracket -family=PLSI -map -root -external_primitives -top arbiter_top.sch"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [catch {open ev68020_arbiter.efl w} rspFile] {
	puts stderr "Cannot create response file ev68020_arbiter.efl: $rspFile"
} else {
	puts $rspFile "arbiter_top.edn
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/edfmerge\" -i ev68020_arbiter.efl -prj arbiter_top -inc \"$install_dir/ispcpld/plsi/map/plsi_bse.ecf\" -flib \"$install_dir/ispcpld/plsi/map/plsi_map.ecf\" -fixname -family plsi -o ev68020_arbiter.emf"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
file delete ev68020_arbiter.efl
if [runCmd "\"$cpld_bin/syndpm\" -i ev68020_arbiter.emf -if edif -p ispLSI2096A-100LQ128 -pre "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$install_dir/ispcomp/bin/impsrclever\" -prj ev68020_arbiter -log ev68020_arbiter.ir0 "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
# Application to view the Process: 
# Constraint Editor
if [catch {open ce.rsp w} rspFile] {
	puts stderr "Cannot create response file ce.rsp: $rspFile"
} else {
	puts $rspFile "-devfile \"$install_dir/ispcpld/data/lc2k/la2096_128q.dev\"
-lci ev68020_arbiter.lct
-touch ev68020_arbiter.ir0
-src ev68020_arbiter.emf
-type EDIF
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/lciedit\" @ce.rsp"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 11/16/24 04:06:48 ###########


########## Tcl recorder starts at 11/16/24 04:16:43 ##########

# Commands to make the Process: 
# Generate Board-level Stamp Model
if [runCmd "\"$cpld_bin/syndpm\" -i ev68020_arbiter.emf -if edif -prop ev68020_arbiter.prp -p ispLSI2096A-100LQ128 -pre "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$install_dir/ispcomp/bin/impsrclever\" -prj ev68020_arbiter -log ev68020_arbiter.irs -noPrp"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/syndpm\" -i ev68020_arbiter.laf -if laf -p ispLSI2096A-100LQ128 -pd \"$proj_dir\"  -of vhdl -of verilog"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/synta\" -proj ev68020_arbiter -pd \"$proj_dir\" -dpm_only "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/stamppar\" -i ev68020_arbiter   -log automake.err -target ispLSI"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 11/16/24 04:16:43 ###########

