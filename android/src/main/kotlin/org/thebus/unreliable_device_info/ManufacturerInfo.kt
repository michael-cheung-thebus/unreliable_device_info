package org.thebus.unreliable_device_info

import java.lang.Exception

class ManufacturerInfo{
    companion object{

        fun serialNumber(): String?{

            ExceptionInfo.resetException()

            var retNumber: String? = null

            try{
                val sysProps = Class.forName("android.os.SystemProperties")

                val sysProps_get =
                    sysProps.getMethod(
                            "get",
                            String::class.java,
                            String::class.java
                    )

                //works for some Samsung models
                try{
                    retNumber = sysProps_get.invoke(sysProps,
                            "ril.serialnumber",
                            null
                    ) as String?
                }catch(e: Exception){
                    ExceptionInfo.setException(e.message)
                }

                if((!ExceptionInfo.hasException) && (retNumber == null)){
                    //works for other Samsung models
                    try {
                        retNumber = sysProps_get.invoke(sysProps,
                                "sys.serialnumber",
                                null
                        ) as String?
                    } catch (e: Exception) {
                        ExceptionInfo.setException(e.message)
                    }
                }


            }catch(e: Exception){
                ExceptionInfo.setException(e.message)
            }

            return retNumber
        }
    }
}