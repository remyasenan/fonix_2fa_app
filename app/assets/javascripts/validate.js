mobile_num_regex = /^([0|\+[0-9]{1,5})?([7-9][0-9]{9})$/

function validate_mobile_number(mobile_number){
    num = document.getElementById('mobile_number').value;
    if (num != '' && num.match(mobile_num_regex))
        return true
    else
        alert("Enter a valid mobile number");
        document.getElementById('mobile_number').focus();
        return false;
    end
}