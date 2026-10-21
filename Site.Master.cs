using System;
using System.IO;
using System.Web.UI;

namespace FitCore
{
    public partial class SiteMaster : MasterPage
    {
        // Returns "active" for the nav link that matches the current page.
        protected string NavClass(string page)
        {
            string current = Path.GetFileNameWithoutExtension(Request.Path);
            if (string.IsNullOrEmpty(current)) current = "Default";
            return current.Equals(page, StringComparison.OrdinalIgnoreCase) ? "active" : "";
        }
    }
}
