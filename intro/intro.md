

Introduction
========================================================================================================================

This step takes you through the process of connecting to Oracle Cloud and locating your database.

Step 1. Connecting to the Oracle Cloud
------------------------------------------------------------------------------------------------------------------------

**Objectives:**

- Learn how to login to the Oracle Cloud Console

  


### Signing in to the OCI Console

Start your web browser. 

Go to the [OCI console](https://console.eu-frankfurt-1.oraclecloud.com). <https://console.eu-frankfurt-1.oraclecloud.com> For this lab we are using the Frankfurt region, even though other regions may be geographically closer as this is where our tenancy has capacity to support the workshop.



Enter the tenancy name `oractdemeabdmautodb` and click **Continue**

![](../common-images/login-tenant-jesus-01.png)



Expand the *Oracle Cloud Infrastructure Direct Sign-In* region by selecting the down arrow



![](../common-images/login-tenant-jesus-02.png )

In the *Oracle Cloud Infrastructure Direct Sign-In* region enter the Oracle Cloud Infrastructure login and password you were supplied for this workshop.

![](../common-images/login-tenant-jesus-03.png)





Verify that your region is set to Germany Central (Frankfurt) on the top right-hand side of your screen, if not, use the drop down list to select 'Germany Central (Frankfurt)'

![](../common-images/select-region-frankfurt.png)

### Locating your ADB Instance

As part of the preparation for this lab, ADB instances have been pre-created. 

Select the 'hamburger menu' in the top left hand side, select *Oracle Database* and navigate to
"**Autonomous Transaction Processing"** or "**Autonomous Data Warehouse**" depending on the instructions provided by your lab leader.

![](../common-images/adb-sidebar-atp.png)

This will take you to the management console page for ADB  in the root compartment of the tenancy. The red warning icon \"**Forbidden**\" indicates that the Policies within the tenancy does not allow your user to view ATP Instances in the root compartment.

![](../common-images/image19.png)



To locate your ADB instance in this tenancy you need to select a compartment.

Click on the pulldown menu marked **Compartment**. Expand the menu under by using '+'.**Your instructor will tell you which sub compartment to use**.

![](../common-images/image20.png)

> Note - Your list of compartments may be different to the one shown above. In this introduction  we will use the compartment called ATP_Delegate in all the screenshots/ examples, with a database workload of Autonomous Transaction Processing. **Your compartment may be different, and your database workload may be different.**

The main page will now change to show the list of Autonomous instances within your compartment, as shown below:

> Note - this lab uses the same tenancy and compartment for all lab attendees. You will see ADB instances listed on this page which have already been provisioned in preparation for this lab.

![](../common-images/image21.png)



> Note: the list of instances is sorted by provisioning date, not by name.
> Refer to your lab information sheet to check which ADB instance has been assigned to you for this lab.

Click on the name of your ADB instance from the list of instances. You may have to scroll down to locate it in the list.

![](../common-images/image22.png)

This will display more information about your instance and you should notice the various menu buttons that help you manage your new instance

A summary of your instance lifecycle status is shown in the large box on the left. It should be green, with the word '**AVAILABLE**'.

| ![](../common-images/atp-available.png) | ![](../common-images/adw-available.png) |
| --------------------------------------- | --------------------------------------- |



You can now proceed with the next lab.



