<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MyBooks.aspx.cs" Inherits="CSCI3321_ASPNET_FinalProject.MyBooks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Build a table to list your book collection -->
    <div>
        <h2>My Books:</h2>
        <br />
        <asp:Table ID="tblMyBooks" runat="server" CssClass="table table-stripe">
            <asp:TableHeaderRow>
                <asp:TableHeaderCell>Book Title</asp:TableHeaderCell>
                <asp:TableHeaderCell>Author</asp:TableHeaderCell>
                <asp:TableHeaderCell>Price</asp:TableHeaderCell>
                <asp:TableHeaderCell>Date Published</asp:TableHeaderCell>
                <asp:TableHeaderCell>Publisher</asp:TableHeaderCell>
                <asp:TableHeaderCell>Genre</asp:TableHeaderCell>
            </asp:TableHeaderRow>

        </asp:Table>
    </div>
    
    <!-- What server control should you use? -->
</asp:Content>
