package org.thebus.unreliable_device_info

class ExceptionInfo{
    companion object{
        var hasException: Boolean = false
        var exceptionMessage: String? = null

        fun setException(newMessage: String?){
            hasException = true
            exceptionMessage = newMessage
        }
        fun resetException(){
            hasException = false
            exceptionMessage = null
        }
    }
}