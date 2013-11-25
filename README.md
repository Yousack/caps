CiNii Articles Parser for SIST-02
=================================

This program shows an paper's metadata in the form of SIST-02. This require NAID. NAID is included in the URL.

    http://ci.nii.ac.jp/naid/[Here is the NAID]

How to execute
--------------

	$ ruby cinii_json.rb [NAID]

But this form is not implemented yet, so you need to execute this program without command-line argument. In this program, the variable "argv" is not set. You should change the NAID in the source code. This form will be implemented soon.