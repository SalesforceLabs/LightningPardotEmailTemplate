
<html><head></head><body><h1 id='ZNYACADF9ej'>Lightning Pardot Email Template</h1>

<u><a href="https://youtu.be/gwm2mc3HPNI"><b>Demo Video</b></a></u><br/>

<h2 id='ZNYACAINraB'>Installation and Setup Instructions</h2>

Install <b>Lightning Pardot Email Template</b> into your Pardot Enabled org<br/>

<a href="https://appexchange.salesforce.com/appxListingDetail?listingId=a0N4V00000GwHi1UAF">https://appexchange.salesforce.com/appxListingDetail?listingId=a0N4V00000GwHi1UAF</a><br/>

<div data-section-style='11' style='max-width:100%' class=''><img src='https://quip.com/blob/ZNYAAAb2cYw/GLiDu04fqQGA5Y3rEsr9tA?a=wBlsnFYDaFE6PWPpG77ddasroqEMOdhPApddPwdjdxEa' id='ZNYACATUTi7' width='800' height='584' alt="Screen Shot 2021-08-02 at 12.00.59.png"></img></div><br/>

<br/>

Navigate to <b>Setup → App Manager</b> and click <b>New Connected App</b> and fill it up just like below<br/>

<div data-section-style='11' style='max-width:100%' class=''><img src='https://quip.com/blob/ZNYAAAb2cYw/fS8ZJNsvUQJAkaXTiqUhWA?a=TjD5aLkzXrkaDr28sI33DP1m80GysVccCGAVXSmZuaga' id='ZNYACA4ChHF' width='800' height='711' alt="Screen Shot 2021-08-02 at 12.08.19.png"></img></div><br/>

<br/>

Take note of the <b>Consumer Key</b> and <b>Consumer Secret</b>. You will need this to grant access to the Component<br/>

<div data-section-style='11' style='max-width:100%' class=''><img src='https://quip.com/blob/ZNYAAAb2cYw/Zaka5BVktkUvlmXxqA1CSw?a=R9NVUraqOvrFfTki9bpwYTPTsYaoKjNe07zFwUzPPcQa' id='ZNYACA1J8AY' width='800' height='366' alt="Screen Shot 2021-08-02 at 12.14.48.png"></img></div><br/>

<br/>

Take also note of <b>Business Unit Id</b> by navigating <b>Setup → Pardot → Pardot Account Setup</b><br/>

<br/>

Next ready the Pardot User’s <b>Username</b> and <b>Password</b> to be used to connect to Pardot API. If the user is an Administrator, you can its password WITHOUT the Security Token<br/>

<br/>

If the user is an <b>Identity User</b>, login with that user first and reset the Security Token by Navigating to <b>My Profile → Personal → Reset My Security Token</b> and click <b>Reset Security Token</b> button. Copy the Security Token sent in the email.<br/>

<div data-section-style='11' style='max-width:100%' class=''><img src='https://quip.com/blob/ZNYAAAb2cYw/zj3bn8MA04y__ubrGGTEkw?a=ZPBie2aWFESltvaCcUaaXadMKQa37ls1dlXNB2qEchIa' id='ZNYACAO2qKs' width='800' height='492' alt="Screen Shot 2021-08-02 at 12.37.52.png"></img></div><br/>

<br/>

Create a setting to connect the Component to Pardot API to access Pardot Files. Navigate to <b>Setup → Custom Code → Custom Metadata Types</b> and click <b>Manage Records</b> of <b>Pardot Email Template Component Setting</b>. Check if there is a record. If there is a record, <b>Edit</b> it. If there is none click <b>New</b> to create one. <u><i>(only ONE record is needed)</i></u><br/>

<div data-section-style='11' style='max-width:100%' class=''><img src='https://quip.com/blob/ZNYAAAb2cYw/qBITdlJC0wNrEPpyd8vjFg?a=afXwadqtriicRvgguPeL3HySMHTCRDTDUObkImAoS5oa' id='ZNYACAuqy8a' width='800' height='287' alt="Screen Shot 2021-08-02 at 14.30.10.png"></img></div><br/>

<br/>

Fill up all the fields. Mouse over to the <b>?</b> of every variable to get detailed instructions on how to obtain one. Paste the values you have copied earlier. Use the Password as is if the Pardot User is also the <b>Administrator</b>. If The user is an <b>Indentity User</b> fill up with the following format → <b>PASSWORD + SECURITY TOKEN</b>. Save and you are now ready to use the Lightning Component.<br/>

<div data-section-style='11' style='max-width:100%' class=''><img src='https://quip.com/blob/ZNYAAAb2cYw/ph2fYVL12oUtn0J1yd5oFw?a=XdWvnaD8OMtBYFY8KoKcYqD6pItXMq0YQuauZLYZUUMa' id='ZNYACAIwIkZ' width='800' height='441' alt="Screen Shot 2021-08-02 at 14.30.35.png"></img></div><br/>

<br/>

<br/>

<br/>

<h2 id='ZNYACADcPKf'>Which Email Templates are accessible?</h2>

<b>Lightning Pardot Email Template </b>will enable you to use your Email Templates to the new Email Builder without creating them again from scratch.<br/>

<br/>

All the <b>One-to-One Templates</b> under <b>Pardot → Pardot Email → Templates</b> can now be added to the new <b>Email Builder.</b><br/>

<div data-section-style='11' style='max-width:100%' class=''><img src='https://quip.com/blob/ZNYAAAb2cYw/1491D3mTiLNCH8MMZ_E6zA?a=gI3Sqwhufmqm08YsECmwF6nb3rR8oyWNQQoEzVaYteYa' id='ZNYACAzf0aN' width='800' height='439' alt="Screen Shot 2021-08-02 at 14.10.48.png"></img></div>If the template you want to use is not listed, make sure that the <b>Template</b> is a <b>One to One Email</b> by doing the following. Click the <b>gear icon</b> on your template and choose <b>Edit</b><br/>

<div data-section-style='11' style='max-width:100%' class=''><img src='https://quip.com/blob/ZNYAAAb2cYw/-lDIS9E_YQqa9Znep-LZ9g?a=8vfnUirCRC6U1Jam117WqMEy5a3KdDKKzfl086Y4sUca' id='ZNYACAsAxWS' width='800' height='439' alt="Screen Shot 2021-08-02 at 14.19.35.png"></img></div><br/>

Click <b>Basic Info</b> and make sure that the <b>One to one emails</b> is <b>checked</b>. <b>Save</b> the template<br/>

<div data-section-style='11' style='max-width:100%' class=''><img src='https://quip.com/blob/ZNYAAAb2cYw/Or2vVvh5gqewvaEz9e9gNg?a=nVupcYOu1n7IcTDIz2GuWJrGKWSb3fXTPd9eJj7ZoVoa' id='ZNYACArtZnl' width='800' height='439' alt="Screen Shot 2021-08-02 at 14.18.18.png"></img></div><br/>

<br/>

<br/>

<br/>

<br/>

<h2 id='ZNYACAzPnl6'>Using the Lightning Component</h2>

Navigate to <b>Pardot → Email Content</b>. Click <b>New</b><i><u> (Make sure that the current user have a permission to Email Contents)</u></i><br/>

<div data-section-style='11' style='max-width:100%' class=''><img src='https://quip.com/blob/ZNYAAAb2cYw/IHyuGFIX8HEdIqc1tt0_dw?a=aZ1Go1s5108dxLrZTAFdrlCatX8QtyjbjazH3KoYgkQa' id='ZNYACANY1ZI' width='800' height='301' alt="Screen Shot 2021-08-02 at 13.27.22.png"></img></div><br/>

<br/>

Fill up the form and <b>Save</b><br/>

<div data-section-style='11' style='max-width:100%' class=''><img src='https://quip.com/blob/ZNYAAAb2cYw/0gfvU-PnpJHu--LR1yTcrw?a=JIpspDLpapw9cBULnZw7RP39aaDzixXs2UIKzAvUbdAa' id='ZNYACAKe8tK' width='800' height='582' alt="Screen Shot 2021-08-02 at 13.35.27.png"></img></div><br/>

<br/>

Then click the <b>▼</b> and select <b>Edit in Builder</b><br/>

<div data-section-style='11' style='max-width:100%' class=''><img src='https://quip.com/blob/ZNYAAAb2cYw/K4wceERgA2Meyu_njqHQuQ?a=71fHaDGTgqgplbiaqWkmJ0yamxRF46vNXrLM2fsfxYUa' id='ZNYACAK3jk2' width='800' height='383' alt="Screen Shot 2021-08-02 at 13.36.36.png"></img></div><br/>

<br/>

The new <b>Email Builder</b> will display. Drag <b>Lightning Pardot Email Template</b> Custom - Managed Component to the Canvas<br/>

<div data-section-style='11' style='max-width:100%' class=''><img src='https://quip.com/blob/ZNYAAAb2cYw/vjugxm1nAL5bnOwXRpGeZQ?a=cTXp4YHlqRz1oF3e3uEjKCkNNhqaJ7tcEx97BsxaVG0a' id='ZNYACAP7Fsn' width='800' height='383' alt="Screen Shot 2021-08-02 at 13.38.32 2.png"></img></div><br/>

<br/>

Select the <b>One-to-One Email Template</b> from the dropdown list<br/>

<div data-section-style='11' style='max-width:100%' class=''><img src='https://quip.com/blob/ZNYAAAb2cYw/gIzfKI5dAnw9PlCulxD5zQ?a=lraA6iG1B2qD77BZ8QRCKaDosb7rGEaGV0ME2aguuPYa' id='ZNYACAnVD9D' width='800' height='379' alt="Screen Shot 2021-08-02 at 14.36.40.png"></img></div><br/>

<br/>

If the following error shows.. the connected app may still not be ready.. on this case please wait up to 10 minutes until the connected app is ready. Double check the custom metadata settings and make sure no whitespace, new line or the password is correct.<br/>

<div data-section-style='11' style='max-width:100%' class=''><img src='https://quip.com/blob/ZNYAAAb2cYw/CTY41-xe4KpdUPUfT-9h-A?a=eUDlxa7OMY3FeIQ1Zl8H6JyCy22qbPSxn2HbjxnpljQa' id='ZNYACAedalj' alt="Screen Shot 2021-08-02 at 15.48.59.png"></img></div><br/>

<br/>

<br/>

It will then generate the email template <i><u>(be informed that you cannot directly edit the contents of the Email Template due to the current restrictions of the Pilot Release. Directly edit the templates in the <b>Pardot Email → Templates</b> and reselect the <b>Template</b> from the dropdown to reload the latest version of the template)</u></i><br/>

<div data-section-style='11' style='max-width:100%' class=''><img src='https://quip.com/blob/ZNYAAAb2cYw/1g-zu6I_kiZG3wdm1bZzWg?a=BTBv63PyMxYjyPK2KTbAziibtoEJvxn1KcEZ4MGZGLca' id='ZNYACAEt83F' width='800' height='445' alt="Screen Shot 2021-08-02 at 14.36.55.png"></img></div><br/>

<br/>

Unfortunately, not all <b>One-to-One Templates</b> are supported. These items are marked with <b>*</b> at the beginning of the template name. Due to current restrictions, <b>Templates</b> with <u><i><b>more than 10,000 characters are not supported</b></i></u> as per Pilot Release. Please edit your Templates in under 10,000 characters to be able to use in the new <b>Email Builder</b>.<br/>

<div data-section-style='11' style='max-width:100%' class=''><img src='https://quip.com/blob/ZNYAAAb2cYw/yYn9Qu0reWJRZHWrlg23yQ?a=PXqTal8USgQOsEMhabp9owG4CDoMAEDFODFzFY7E1sca' id='ZNYACAJAb0G' width='800' height='359' alt="Screen Shot 2021-08-02 at 14.37.42.png"></img></div><br/>

<br/>

<b>Save</b> and check the preview<br/>

<div data-section-style='11' style='max-width:100%' class=''><img src='https://quip.com/blob/ZNYAAAb2cYw/CKmVmlhoLvWjSUI4OsS7tg?a=D9gLIlrTJI83Bz5JALskaLw7FCaJjgovC2IVxJ8tx5sa' id='ZNYACAVenfn' alt="Screen Shot 2021-08-02 at 14.45.45.png"></img></div><br/>

<br/>

<br/>

<br/>

<br/>

<br/>

<h2 id='ZNYACAWxKUo'><b>Congratulations!</b> </h2>

You have tried adding <b>Pardot Email Template</b> to your Email using the new <b>Email Builder</b>!<br/>

</body></html>
