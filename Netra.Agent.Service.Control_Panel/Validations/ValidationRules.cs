
using System;
using System.Globalization;
using System.Windows.Controls;

namespace Netra.Agent.Service.Control_Panel.Validations
{
    public class MandatoryRules:ValidationRule
    {
        public override ValidationResult Validate(object value, System.Globalization.CultureInfo cultureInfo)
        {
            if (value == null)
                return new ValidationResult(false, "value cannot be empty.");
            else
            {
                if (value.ToString().Length==0)
                    return new ValidationResult
                    (false, "value cannot be empty.");
            }
            return ValidationResult.ValidResult;
        }
    }
    public class IPAddressRule : ValidationRule
    {
        public override ValidationResult Validate(object value, CultureInfo cultureInfo)
        {
            if (value == null)
                return new ValidationResult(false, "value cannot be empty.");
            else
            {
                if(!(ConfigHelper.IsIP4(value.ToString())||ConfigHelper.IsIP6(value.ToString())))
                    return new ValidationResult(false, "Not a valid IP address.");
            }
            return ValidationResult.ValidResult;
        }
    }
}
