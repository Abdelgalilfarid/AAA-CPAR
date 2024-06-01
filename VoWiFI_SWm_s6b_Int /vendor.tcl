#file location /cisco-ar/scripts/radius/tcl/vendor.tcl 
proc vendor {request respone environ} {

        if { [ $request containsKey Vendor-Specific-Application-Id ] } {
         $request remove Vendor-Specific-Application-Id
         }
#            set vendor "10415"
#            $response put Vendor-Specific-Application-Id $vendor
              

}

proc vendorresponse {request respone environ} {
            set vendor "10415"
           set vendorspec "10415"
              $respone put Vendor-Id $vendorspec 
               $respone put Vendor-Specific-Application-Id $vendor
#set vendorsupport "10415"
#$respone put Supported-Vendor-Id $vendorsupport

if { [ string compare [ $environ get Diameter-Command-Code ] 257 ] == 0 } {
$respone put Vendor-Specific-Application-Id "<Vendor-Specific-Application-Id>Vendor-Id=10415;Auth-Application-Id=16777272;</Vendor-Specific-Application-Id>"
}


}


proc vendorresponseswm {request respone environ} {
            set vendor "10415"
           set vendorspec "10415"
              $respone put Vendor-Id $vendorspec
               $respone put Vendor-Specific-Application-Id $vendor

if { [ string compare [ $environ get Diameter-Command-Code ] 257 ] == 0 } {
$respone put Vendor-Specific-Application-Id "<Vendor-Specific-Application-Id>Vendor-Id=10415;Auth-Application-Id=16777264;</Vendor-Specific-Application-Id>"
}


}