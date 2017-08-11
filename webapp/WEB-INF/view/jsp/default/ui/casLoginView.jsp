<%--

    Licensed to Jasig under one or more contributor license
    agreements. See the NOTICE file distributed with this work
    for additional information regarding copyright ownership.
    Jasig licenses this file to you under the Apache License,
    Version 2.0 (the "License"); you may not use this file
    except in compliance with the License.  You may obtain a
    copy of the License at the following location:

      http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing,
    software distributed under the License is distributed on an
    "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
    KIND, either express or implied.  See the License for the
    specific language governing permissions and limitations
    under the License.

--%>
<jsp:directive.include file="includes/top.jsp" />


<div class="box fl-panel" id="login">
	<form:form method="post" id="fm1" cssClass="fm-v clearfix"
		commandName="${commandName}" htmlEscape="true">
		<form:errors path="*" id="msg" cssClass="errors" element="div" />
		<!-- <spring:message code="screen.welcome.welcome" /> -->
		<h2>
			<spring:message code="screen.welcome.instructions" />
		</h2>
		<div class="row fl-controls-left">
			<label for="username" class="fl-label"><spring:message
					code="screen.welcome.label.netid" /></label>
			<c:if test="${not empty sessionScope.openIdLocalId}">
				<strong><c:out value="${sessionScope.openIdLocalId}" /></strong>
				<input type="hidden" id="username" name="username"
					value="<c:out value="${sessionScope.openIdLocalId}" />" />
			</c:if>

			<c:if test="${empty sessionScope.openIdLocalId}">
				<spring:message code="screen.welcome.label.netid.accesskey"
					var="userNameAccessKey" />
				<form:input cssClass="required" cssErrorClass="error" id="username"
					size="25" tabindex="1" accesskey="${userNameAccessKey}"
					path="username" autocomplete="false" htmlEscape="true" />
			</c:if>
		</div>
		<div class="row fl-controls-left">
			<label for="password" class="fl-label"><spring:message
					code="screen.welcome.label.password" /></label>
			<%--
						NOTE: Certain browsers will offer the option of caching passwords for a user.  There is a non-standard attribute,
						"autocomplete" that when set to "off" will tell certain browsers not to prompt to cache credentials.  For more
						information, see the following web page:
						http://www.geocities.com/technofundo/tech/web/ie_autocomplete.html
						--%>
			<spring:message code="screen.welcome.label.password.accesskey"
				var="passwordAccessKey" />
			<form:password cssClass="required" cssErrorClass="error"
				id="password" size="25" tabindex="2" path="password"
				accesskey="${passwordAccessKey}" htmlEscape="true"
				autocomplete="off" />
		</div>
		<div class="row check">
			<input id="warn" name="warn" value="true" tabindex="3"
				accesskey="<spring:message code="screen.welcome.label.warn.accesskey" />"
				type="checkbox" /> <label for="warn"><spring:message
					code="screen.welcome.label.warn" /></label>
		</div>
		<div class="row btn-row">
			<input type="hidden" name="lt" value="${loginTicket}" /> <input
				type="hidden" name="execution" value="${flowExecutionKey}" /> <input
				type="hidden" name="_eventId" value="submit" /> <input
				class="btn-submit" name="submit" accesskey="l"
				value="<spring:message code="screen.welcome.button.login" />"
				tabindex="4" type="submit" /> <input class="btn-submit"
				type="button" onclick="location='register'"
				value="<spring:message code="screen.welcome.button.register" />"></input>
			<input class="btn-reset" name="reset" accesskey="c"
				value="<spring:message code="screen.welcome.button.clear" />"
				tabindex="5" type="reset" />


		</div>
	</form:form>
</div>


<div id="sidebar" style="float: left;">
	<div class="sidebar-content">
		<p class="fl-panel fl-note fl-bevel-white fl-font-size-80">
			<spring:message code="screen.welcome.security" />
		</p>
		<div id="list-languages" class="fl-panel">
			<%
				final String queryString = request.getQueryString() == null ? ""
						: request.getQueryString().replaceAll(
								"&locale=([A-Za-z][A-Za-z]_)?[A-Za-z][A-Za-z]|^locale=([A-Za-z][A-Za-z]_)?[A-Za-z][A-Za-z]",
								"");
			%>
			<c:set var='query' value='<%=queryString%>' />
			<c:set var="xquery" value="${fn:escapeXml(query)}" />



			<div class="container">
				<!-- Portfolio Content -->
				<div id="portfolio-wrapper">

					<div
						class="one-third column portfolio-item interior-design architecture category1">
						<div class="picture">
							<a href="http://localhost:8080/cas-sample/" title="Linux"
								target="_blank"><img
								src="http://www.tomexam.com//upload/files/20170625/9654ce49-08ad-4a4d-a80d-7d619d8fd467.jpg"
								alt="Linux" />
								<div class="image-overlay-link"></div> </a>
							<div class="tm_istop"></div>
						</div>
						<div class="item-description alt">
							<h5>
								<a
									href="http://www.tomexam.com/blog-detail.xhtml?bid=035e8319-e7da-4c2c-8699-e00a6361e88b"
									target="_blank">LinuxLinuxLinuxLinux</a>
							</h5>
							<div class="blog-meta">
								<span><i class="mini-ico-calendar"></i> 2017-03-20
									09:58:19.0</span> &nbsp; <span><i class="mini-ico-eye-open"></i>
									1086</span>
							</div>
							<p>LinuxLinuxLinuxLinuxLinuxLinuxLinuxLinuxLinuxLinuxLinux...</p>
						</div>
					</div>
					<div
						class="one-third column portfolio-item interior-design architecture category1">
						<div class="picture">
							<a href="http://localhost:8080/cas-sample/" title="Linux"
								target="_blank"><img
								src="http://www.tomexam.com//upload/files/20170625/9654ce49-08ad-4a4d-a80d-7d619d8fd467.jpg"
								alt="Linux" />
								<div class="image-overlay-link"></div> </a>
							<div class="tm_istop"></div>
						</div>
						<div class="item-description alt">
							<h5>
								<a
									href="http://www.tomexam.com/blog-detail.xhtml?bid=035e8319-e7da-4c2c-8699-e00a6361e88b"
									target="_blank">LinuxLinuxLinuxLinux</a>
							</h5>
							<div class="blog-meta">
								<span><i class="mini-ico-calendar"></i> 2017-03-20
									09:58:19.0</span> &nbsp; <span><i class="mini-ico-eye-open"></i>
									1086</span>
							</div>
							<p>LinuxLinuxLinuxLinuxLinuxLinuxLinuxLinuxLinuxLinuxLinux...</p>
						</div>
					</div>
					<div
						class="one-third column portfolio-item interior-design architecture category1">
						<div class="picture">
							<a href="http://localhost:8080/cas-sample/" title="Linux"
								target="_blank"><img
								src="http://www.tomexam.com//upload/files/20170625/9654ce49-08ad-4a4d-a80d-7d619d8fd467.jpg"
								alt="Linux" />
								<div class="image-overlay-link"></div> </a>
							<div class="tm_istop"></div>
						</div>
						<div class="item-description alt">
							<h5>
								<a
									href="http://www.tomexam.com/blog-detail.xhtml?bid=035e8319-e7da-4c2c-8699-e00a6361e88b"
									target="_blank">LinuxLinuxLinuxLinux</a>
							</h5>
							<div class="blog-meta">
								<span><i class="mini-ico-calendar"></i> 2017-03-20
									09:58:19.0</span> &nbsp; <span><i class="mini-ico-eye-open"></i>
									1086</span>
							</div>
							<p>LinuxLinuxLinuxLinuxLinuxLinuxLinuxLinuxLinuxLinuxLinux...</p>
						</div>
					</div>
					<div
						class="one-third column portfolio-item interior-design architecture category1">
						<div class="picture">
							<a href="http://localhost:8080/cas-sample/" title="Linux"
								target="_blank"><img
								src="http://www.tomexam.com//upload/files/20170625/9654ce49-08ad-4a4d-a80d-7d619d8fd467.jpg"
								alt="Linux" />
								<div class="image-overlay-link"></div> </a>
							<div class="tm_istop"></div>
						</div>
						<div class="item-description alt">
							<h5>
								<a
									href="http://www.tomexam.com/blog-detail.xhtml?bid=035e8319-e7da-4c2c-8699-e00a6361e88b"
									target="_blank">LinuxLinuxLinuxLinux</a>
							</h5>
							<div class="blog-meta">
								<span><i class="mini-ico-calendar"></i> 2017-03-20
									09:58:19.0</span> &nbsp; <span><i class="mini-ico-eye-open"></i>
									1086</span>
							</div>
							<p>LinuxLinuxLinuxLinuxLinuxLinuxLinuxLinuxLinuxLinuxLinux...</p>
						</div>
					</div>
					<div
						class="one-third column portfolio-item interior-design architecture category1">
						<div class="picture">
							<a href="http://localhost:8080/cas-sample/" title="Linux"
								target="_blank"><img
								src="http://www.tomexam.com//upload/files/20170625/9654ce49-08ad-4a4d-a80d-7d619d8fd467.jpg"
								alt="Linux" />
								<div class="image-overlay-link"></div> </a>
							<div class="tm_istop"></div>
						</div>
						<div class="item-description alt">
							<h5>
								<a
									href="http://www.tomexam.com/blog-detail.xhtml?bid=035e8319-e7da-4c2c-8699-e00a6361e88b"
									target="_blank">LinuxLinuxLinuxLinux</a>
							</h5>
							<div class="blog-meta">
								<span><i class="mini-ico-calendar"></i> 2017-03-20
									09:58:19.0</span> &nbsp; <span><i class="mini-ico-eye-open"></i>
									1086</span>
							</div>
							<p>LinuxLinuxLinuxLinuxLinuxLinuxLinuxLinuxLinuxLinuxLinux...</p>
						</div>
					</div>
					
					
					
				</div>
			</div>
		</div>
	</div>
</div>
<jsp:directive.include file="includes/bottom.jsp" />