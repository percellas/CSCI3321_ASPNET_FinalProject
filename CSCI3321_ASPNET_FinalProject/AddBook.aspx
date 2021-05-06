<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddBook.aspx.cs" Inherits="CSCI3321_ASPNET_FinalProject.AddBook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Add New Book</h3>
    <div class="row">
        <div class="col-md-3"></div>
        <div class="col-md-9">
            <!-- here is my div with the stuff I added -->
            <div>

                Book title: <asp:TextBox ID="txtTitle" runat="server"></asp:TextBox>
                <br />
                Author: <asp:DropDownList ID="ddlAuthor" runat="server" DataSourceID="sdsAuthors" DataTextField="LastName" DataValueField="AuthorID">
                </asp:DropDownList>
                <asp:SqlDataSource ID="sdsAuthors" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" ProviderName="<%$ ConnectionStrings:DBConnectionString.ProviderName %>" SelectCommand="SELECT AuthorID, LastName, FirstName FROM Authors"></asp:SqlDataSource>
                <br />
                Price: 
                <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
                <br />
                Date Published: 
                <asp:TextBox ID="txtPublishDate" runat="server"></asp:TextBox>
                <br />
                Publisher: 
                <asp:DropDownList ID="ddlPublisher" runat="server" DataSourceID="sdsPublisher" DataTextField="PublisherName" DataValueField="PublisherID">
                </asp:DropDownList>
                <asp:SqlDataSource ID="sdsPublisher" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" ProviderName="<%$ ConnectionStrings:DBConnectionString.ProviderName %>" SelectCommand="SELECT PublisherID, PublisherName FROM Publishers"></asp:SqlDataSource>
                <br />
                Genre: 
                <asp:DropDownList ID="ddlGenre" runat="server" DataSourceID="sdsGenre" DataTextField="GenreName" DataValueField="GenreID">
                </asp:DropDownList>
                <asp:SqlDataSource ID="sdsGenre" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" ProviderName="<%$ ConnectionStrings:DBConnectionString.ProviderName %>" SelectCommand="SELECT GenreName, GenreID FROM Genres"></asp:SqlDataSource>
                <br />
                <asp:Button ID="btnSubmit" runat="server" Text="Add Book" OnClick="btnSubmit_Click" />
            </div>

        </div>
    </div>
</asp:Content>
