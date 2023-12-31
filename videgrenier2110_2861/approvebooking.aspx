﻿<%@ Page Title="" Language="C#" MasterPageFile="~/grand.Master" AutoEventWireup="true" CodeBehind="approvebooking.aspx.cs" Inherits="videgrenier2110_2861.approvebooking" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">

     <h2>Approve / Reject Booking: </h2>

    <asp:GridView ID="gvs" OnPreRender="gvs_PreRender" ClientIDMode="Static"   CssClass="table table-striped
table-bordered"
        runat="server" AutoGenerateColumns="false">
        <Columns>
            <asp:BoundField DataField="fname" HeaderText="First Name" />
            <asp:BoundField DataField="lname" HeaderText="Last Name" />
            <asp:BoundField DataField="uname" HeaderText="Username" />
            <asp:ImageField DataImageUrlField="image"
                DataImageUrlFormatString="~/images/{0}" ControlStyle-Width="100" HeaderText="Profile
Pic" />
            <asp:BoundField DataField="accdate" HeaderText="Request Date&Time" />
            <asp:BoundField DataField="pname" HeaderText="Product name" />
            <asp:BoundField DataField="tupstatus" HeaderText="Access Status" />
            <asp:TemplateField HeaderText="Action">
                <ItemTemplate>
                    <%--store the prod id in the hiddenfield--%>
                    <asp:HiddenField ID="hidpro" runat="server" Value='<%# Eval("pid") %>' />
                    <%--store the user id in the LinkButtons--%>
                    <asp:LinkButton ID="lnkdeny" OnClick="lnkdeny_Click" CommandArgument='<%# Eval("user_id") %>' 
                        CssClass="btn btn-danger"
                        runat="server">Deny Access</asp:LinkButton><br />
                    <br />

                     <asp:HiddenField ID="hidprod" runat="server" Value='<%# Eval("pid") %>' />
                    <asp:LinkButton ID="lnkgrant" OnClick="lnkgrant_Click" CommandArgument='<%# Eval("user_id") %>' CssClass="btn btn-success"
                        runat="server">Grant Access</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>

</asp:Content>
