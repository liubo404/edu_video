<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ include file="/base.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title>网站配置管理</title>
<body>
	<form action="${ctx }/admin/websiteProfile/update" method="post" id="addprofileForm">
		<input type="hidden" name="type" value="${type}" />
		<fieldset>
			<legend>
				<span>网站配置管理</span>
				&gt;
				<span>修改网站配置</span>
			</legend>
			<div class="mt20">
				<p>
					<label for="lf"><span>
							<tt class="c_666 ml20 fsize12">
								（<font color="red">*</font>&nbsp;为必填项）
							</tt>
						</span></label>
					<span class="field_desc"></span>
				</p>
				<c:if test="${type=='web' }">
					<p>
						<label for="lf"><font color="red">*</font>&nbsp;网站title(网站头部)</label>
						<input type="text" name="title" value="${webSiteMap.web.title}" class="lf" />
						<span class="field_desc"></span>
					</p>
					<p>
						<label for="lf"><font color="red">*</font>&nbsp;网校名称(网站头部)</label>
						<input type="text" name="company" value="${webSiteMap.web.company}" class="lf" />
						<span class="field_desc"></span>
					</p>
					<p>
						<label for="lf"><font color="red">*</font>&nbsp;网站作者</label>
						<input type="text" name="author" value="${webSiteMap.web.author}" class="lf" />
						<span class="field_desc"></span>
					</p>
					<p>
						<label for="lf"><font color="red">*</font>&nbsp;关键词</label>
						<input type="text" name="keywords" value="${webSiteMap.web.keywords}" style="width: 75%" class="lf" />
						<span class="field_desc"></span>
					</p>
					<p>
						<label for="lf"><font color="red">*</font>&nbsp;描述</label>
						<input type="text" name="description" value="${webSiteMap.web.description}" style="width: 75%" class="lf" />
						<span class="field_desc"></span>
					</p>
					<p>
						<label for="lf"><font color="red">*</font>&nbsp;联系邮箱</label>
						<input type="text" name="email" value="${webSiteMap.web.email}" class="lf" />
						<span class="field_desc"></span>
					</p>
					<p>
						<label for="lf"><font color="red">*</font>&nbsp;24小时客服服务热线</label>
						<input type="text" name="phone" value="${webSiteMap.web.phone}" class="lf" />
						<span class="field_desc"></span>
					</p>
					<p>
						<label for="lf"><font color="red">*</font>&nbsp;工作时间</label>
						<input type="text" name="workTime" value="${webSiteMap.web.workTime}" class="lf" />
						<span class="field_desc"></span>
					</p>
					<p>
						<label for="lf"><font color="red">*</font>&nbsp;版权以及备案号(网站底部)</label>
						<input type="text" name="copyright" value="${webSiteMap.web.copyright}" style="width: 75%" class="lf" />
						<span class="field_desc"></span>
					</p>
					</tbody>
				</c:if>
				<c:if test="${type=='alipay' }">
					<p>
						<label for="sf"><font color="red">*</font>&nbsp;合作者身份（PID）</label>
						<input type="text" name="alipaypartnerID" value="${webSiteMap.alipay.alipaypartnerID}" style="width: 35%" class="sf" />
						<span class="field_desc"></span>
					</p>
					<p>
						<label for="sf"><font color="red">*</font>&nbsp;安全校验码（key）</label>
						<input type="text" name="alipaykey" value="${webSiteMap.alipay.alipaykey}" style="width: 35%" class="sf" />
						<span class="field_desc"></span>
					</p>
					<p>
						<label for="sf"><font color="red">*</font>&nbsp;商家邮箱</label>
						<input type="text" name="sellerEmail" value="${webSiteMap.alipay.sellerEmail}" style="width: 35%" class="sf" />
						<span class="field_desc"></span>
					</p>
					<p>
						<label for="sf"><font color="red">*</font>&nbsp;支付宝选择(企业或个人，个人支付宝需定制)</label>
						<input type="radio" name="status" value="0" <c:if test="${webSiteMap.alipay.status==0}">checked='checked'</c:if> />
						企业
						<input type="radio" name="status" value="1" <c:if test="${webSiteMap.alipay.status==1}">checked='checked'</c:if> />
						个人
						<span class="field_desc"></span>
					</p>
				</c:if>
				<c:if test="${type=='censusCode'}">
					<p>
						<label for="sf"><font color="red">*</font>&nbsp;统计代码</label>
						<textarea rows="6" cols="60" name="censusCodeString">${webSiteMap.censusCode.censusCodeString}</textarea>
						<span class="field_desc"></span>
					</p>
				</c:if>
				<c:if test="${type=='letv'}">
					<p>
						<label for="sf"><font color="red">*</font>&nbsp;用户唯一标识码</label>
						<input type="text" name="user_unique" value="${webSiteMap.letv.user_unique}" style="width: 15%" class="sf" />
						<span class="field_desc"></span>
					</p>
					<p>
						<label for="sf"><font color="red">*</font>&nbsp;秘钥</label>
						<input type="text" name="secret_key" value="${webSiteMap.letv.secret_key}" style="width: 15%" class="sf" />
						<span class="field_desc"></span>
					</p>
				</c:if>
				<c:if test="${type=='cc'}">
					<p>
						<label for="sf"><font color="red">*</font>&nbsp;CC appID</label>
						<input type="text" name="ccappID" value="${webSiteMap.cc.ccappID}" style="width: 15%" class="sf" />
						<span class="field_desc"></span>
					</p>
					<p>
						<label for="sf"><font color="red">*</font>&nbsp;CC appKEY</label>
						<input type="text" name="ccappKEY" value="${webSiteMap.cc.ccappKEY}" style="width: 15%" class="sf" />
						<span class="field_desc"></span>
					</p>
				</c:if>
				<p>
					<input class="button" type="submit" value="修改" />
					<input class="button" type="button" value="返回" onclick="javascript:history.go(-1)" />
				</p>
			</div>
			<!-- /tab4 end -->
		</fieldset>
	</form>
</body>
</html>
