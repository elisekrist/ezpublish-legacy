{* DO NOT EDIT THIS FILE! Use an override template instead. *}
<div class="maincontentheader">
<h1>{"RSS feeds"|i18n("design/standard/rss/list")}</h1>
</div>

<div class="maincontentheader">
<h2>{"RSS exports"|i18n("design/standard/rss/list")}</h2>
</div>

<form action={"rss/list"|ezurl} method="post" name="RSSExport">

<table class="list" width="100%" cellpadding="0" cellspacing="0" border="0">
<tr>
    <th>{"Name"|i18n("design/standard/rss/list")}</th>
    <th>{"Version"|i18n("design/standard/rss/list")}</th>
    <th>{"Active"|i18n("design/standard/rss/list")}</th>
    <th>{"Modifier"|i18n("design/standard/rss/list")}</th>
    <th>{"Modified"|i18n("design/standard/rss/list")}</th>
    <th>{"Edit"|i18n("design/standard/rss/list")}</th>
    <th>{"Remove"|i18n("design/standard/rss/list")}</th>
</tr>

{section name=RSSExport loop=$rssexport_list sequence=array(bglight,bgdark)}
<tr>
    <td class="{$RSSExport:sequence}"><a href={concat("rss/feed/",$RSSExport:item.access_url)|ezurl}>{$RSSExport:item.title|wash}</a></td>
    <td class="{$RSSExport:sequence}">{$RSSExport:item.rss_version|wash}</td>
    <td class="{$RSSExport:sequence}">{section show=$RSSExport:item.active|eq(1)}{"Yes"|i18n("design/standard/rss/list")}{section-else}{"No"|i18n("design/standard/rss/list")}{/section}</td>
    <td class="{$RSSExport:sequence}">{content_view_gui view=text_linked content_object=$RSSExport:item.modifier.contentobject}</td>
    <td class="{$RSSExport:sequence}"><span class="small">{$RSSExport:item.modified|l10n(shortdatetime)}</span></td>
    <td class="{$RSSExport:sequence}" width="1"><div class="listbutton"><a href={concat("rss/edit_export/",$RSSExport:item.id)|ezurl}><img class="button" src={"edit.gif"|ezimage} width="16" height="16" alt="Edit" /></a></div></td>
    <td class="{$RSSExport:sequence}" width="1" align="right"><input type="checkbox" name="DeleteIDArray[]" value="{$RSSExport:item.id}"></td>
</tr>
{/section}
<tr>
  <td colspan="6">
    {include uri="design:gui/button.tpl" name=newgroup id_name=NewExportButton value="New export"|i18n("design/standard/rss/list")}
  </td>
  <td align="right">
    <input type="image" name="RemoveExportButton" value="{'Remove'|i18n('design/standard/rss/list')}" src={"trash.png"|ezimage} />
  </td>
</tr>
</table>

</form>

<div class="maincontentheader">
<h2>{"RSS imports"|i18n("design/standard/rss/list")}</h2>
</div>

<form action={"rss/list"|ezurl} method="post" name="RSSImport">

<table class="list" width="100%" cellpadding="0" cellspacing="0" border="0">
<tr>
    <th>{"Name"|i18n("design/standard/rss/list")}</th>
    <th>{"Active"|i18n("design/standard/rss/list")}</th>
    <th>{"Modifier"|i18n("design/standard/rss/list")}</th>
    <th>{"Modified"|i18n("design/standard/rss/list")}</th>
    <th>{"Edit"|i18n("design/standard/rss/list")}</th>
    <th>{"Remove"|i18n("design/standard/rss/list")}</th>
</tr>

{section name=RSSImport loop=$rssimport_list sequence=array(bglight,bgdark)}
<tr>
    <td class="{$RSSImport:sequence}"><a href={concat("rss/edit_import/",$RSSImport:item.id)|ezurl}>{$RSSImport:item.name|wash}</a></td>
    <td class="{$RSSImport:sequence}">{section show=$RSSImport:item.active|eq(1)}{"Yes"|i18n("design/standard/rss/list")}{section-else}{"No"|i18n("design/standard/rss/list")}{/section}</td>
    <td class="{$RSSImport:sequence}">{content_view_gui view=text_linked content_object=$RSSImport:item.modifier.contentobject}</td>
    <td class="{$RSSImport:sequence}"><span class="small">{$RSSImport:item.modified|l10n(shortdatetime)}</span></td>
    <td class="{$RSSImport:sequence}" width="1"><div class="listbutton"><a href={concat("rss/edit_import/",$RSSImport:item.id)|ezurl}><img class="button" src={"edit.gif"|ezimage} width="16" height="16" alt="Edit" /></a></div></td>
    <td class="{$RSSImport:sequence}" width="1" align="right"><input type="checkbox" name="DeleteIDArrayImport[]" value="{$RSSImport:item.id}"></td>
</tr>
{/section}
<tr>
  <td colspan="5">
    {include uri="design:gui/button.tpl" name=newgroup id_name=NewImportButton value="New import"|i18n("design/standard/rss/list")}
  </td>
  <td align="right">
    <input type="image" name="RemoveImportButton" value="{'Remove'|i18n('design/standard/rss/list')}" src={"trash.png"|ezimage} />
  </td>
</tr>
</table>

</form>
