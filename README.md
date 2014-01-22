CiNii Articles Parser for SIST-02
=================================

This program shows a paper's metadata in the form of SIST-02. This requires NAID, the ID for a paper. NAID is included in the URL.

    http://ci.nii.ac.jp/naid/[Here is the NAID]

How to execute
--------------

	$ ruby cinii_json.rb [NAID]

When the number of command-line argument is not one, the program does nothing.

To-Do
-----

* implement the function which can get NAID from command-line argument
* fail to get the year of publishing when the date is invalid (e.g. 2013-05-00)
