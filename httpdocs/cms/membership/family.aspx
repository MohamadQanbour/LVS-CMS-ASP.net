﻿<%@ Page Title="" Language="VB" MasterPageFile="../CMSMaster.master" AutoEventWireup="false" CodeFile="family.aspx.vb" Inherits="cms_membership_family" %>
<%@ MasterType VirtualPath="../CMSMaster.master" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <egvc:EGVHyperLink ID="hypAdd" runat="server" Color="Default" NavigateUrl="family-editor.aspx" AppButton="true">
        <i class="fa fa-plus"></i><%=GetLocalResourceObject("hypAdd.Text") %>
    </egvc:EGVHyperLink>
    <egvc:EGVLinkButton ID="lnkSync" runat="server" Color="Default" AppButton="true">
        <i class="fa fa-check"></i><%=GetLocalResourceObject("SyncFamily") %>
    </egvc:EGVLinkButton>
    <egvc:EGVGridView ID="egvGrid" runat="server" Title="Resources.Local.egvGrid.Title" IconClass="fa fa-user-secret" BusinessClass="membership/Family">
        <Toolbar runat="server">
            <ButtonGroups>
                <egvc:ToolbarButtonGroup runat="server">
                    <Buttons>
                        <egvc:ToolbarButton ID="btnActivate" ActiveState="Multi" Color="Olive" IconClass="fa fa-check" Size="Small" Text="Resources.Local.btnActivate.Text" CommandName="activate" />
                        <egvc:ToolbarButton ID="btnDeactivate" ActiveState="Multi" Color="Maroon" IconClass="fa fa-times" Size="Small" Text="Resources.Local.btnDeactivate.Text" CommandName="deactivate" />
                    </Buttons>
                </egvc:ToolbarButtonGroup>
                <egvc:ToolbarButtonGroup runat="server">
                    <Buttons>
                        <egvc:ToolbarButton ID="btnDelete" ActiveState="Multi" Color="Danger" IconClass="fa fa-trash-o" Size="Small" Text="Resources.Local.btnDelete.Text" CommandName="delete" ShouldConfirm="true" />
                    </Buttons>
                </egvc:ToolbarButtonGroup>
            </ButtonGroups>
        </Toolbar>
    </egvc:EGVGridView>
</asp:Content>