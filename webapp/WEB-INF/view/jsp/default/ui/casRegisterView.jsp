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
			<form id="fm1" class="fm-v clearfix" action="registerLogin" method="post">
                  
                <!-- 欢迎来到中央认证系统。默认的认证处理器支持那些用户名等于密码的账号，开发者可以试试看。 -->
                   <h2><spring:message code="screen.welcome.instructions" /></h2>
                    <div class="row fl-controls-left">
                        <label for="username" class="fl-label"><spring:message code="screen.welcome.label.netid" /></label>

						<input id="username" name="username" class="required" tabindex="1" accesskey="n" type="text" value="" size="25" autocomplete="false"/>
						
                    </div>
                    <div class="row fl-controls-left">
                        <label for="password" class="fl-label"><spring:message code="screen.welcome.label.password" /></label>
						
						
						<input id="password" name="password" class="required" tabindex="2" accesskey="p" type="password" value="" size="25" autocomplete="off"/>
                    </div>
                    <div class="row fl-controls-left">
                        <label for="group" class="fl-label"><spring:message code="screen.welcome.label.group" /></label>

						<select style="width:175px;height:30px"  name="group"><option value="3"><spring:message code="screen.welcome.select.student" /></option><option value="2"><spring:message code="screen.welcome.select.teacher" /></option></select>
						
                    </div>
                    <div class="row btn-row">
						<input class="btn-submit" name="submit" accesskey="l" value="<spring:message code="screen.welcome.button.register" />" tabindex="4" type="submit" />
                    </div>
            </form>
          </div>
            <div id="sidebar">
				<div class="sidebar-content">
                <p class="fl-panel fl-note fl-bevel-white fl-font-size-80"><spring:message code="screen.welcome.security" /></p>
                <div id="list-languages" class="fl-panel">
                <%final String queryString = request.getQueryString() == null ? "" : request.getQueryString().replaceAll("&locale=([A-Za-z][A-Za-z]_)?[A-Za-z][A-Za-z]|^locale=([A-Za-z][A-Za-z]_)?[A-Za-z][A-Za-z]", "");%>
					<c:set var='query' value='<%=queryString%>' />
                    <c:set var="xquery" value="${fn:escapeXml(query)}" />
                  <h3>Languages:</h3>
                  <c:choose>
                     <c:when test="${not empty requestScope['isMobile'] and not empty mobileCss}">
                        <form method="get" action="login?${xquery}">
                           <select name="locale">
                               <option value="en">English</option>
                               <option value="es">Spanish</option>
                               <option value="fr">French</option>
                               <option value="ru">Russian</option>
                               <option value="nl">Nederlands</option>
                               <option value="sv">Svenska</option>
                               <option value="it">Italiano</option>
                               <option value="ur">Urdu</option>
                               <option value="zh_CN">Chinese (Simplified)</option>
                               <option value="zh_TW">Chinese (Traditional)</option>
                               <option value="de">Deutsch</option>
                               <option value="ja">Japanese</option>
                               <option value="hr">Croatian</option>
                               <option value="cs">Czech</option>
                               <option value="sl">Slovenian</option>
                               <option value="pl">Polish</option>
                               <option value="ca">Catalan</option>
                               <option value="mk">Macedonian</option>
                               <option value="fa">Farsi</option>
                               <option value="ar">Arabic</option>
                               <option value="pt_PT">Portuguese</option>
                               <option value="pt_BR">Portuguese (Brazil)</option>
                           </select>
                           <input type="submit" value="Switch">
                        </form>
                     </c:when>
                     <c:otherwise>
                        <c:set var="loginUrl" value="login?${xquery}${not empty xquery ? '&' : ''}locale=" />
						<ul
							><li class="first"><a href="${loginUrl}en">English</a></li
							><li><a href="${loginUrl}es">Spanish</a></li
							><li><a href="${loginUrl}fr">French</a></li
							><li><a href="${loginUrl}ru">Russian</a></li
							><li><a href="${loginUrl}nl">Nederlands</a></li
							><li><a href="${loginUrl}sv">Svenska</a></li
							><li><a href="${loginUrl}it">Italiano</a></li
							><li><a href="${loginUrl}ur">Urdu</a></li
							><li><a href="${loginUrl}zh_CN">Chinese (Simplified)</a></li
                            ><li><a href="${loginUrl}zh_TW">Chinese (Traditional)</a></li
							><li><a href="${loginUrl}de">Deutsch</a></li
							><li><a href="${loginUrl}ja">Japanese</a></li
							><li><a href="${loginUrl}hr">Croatian</a></li
							><li><a href="${loginUrl}cs">Czech</a></li
							><li><a href="${loginUrl}sl">Slovenian</a></li
                            ><li><a href="${loginUrl}ca">Catalan</a></li
                            ><li><a href="${loginUrl}mk">Macedonian</a></li
                            ><li><a href="${loginUrl}fa">Farsi</a></li
                            ><li><a href="${loginUrl}ar">Arabic</a></li
                            ><li><a href="${loginUrl}pt_PT">Portuguese</a></li
                            ><li><a href="${loginUrl}pt_BR">Portuguese (Brazil)</a></li
							><li class="last"><a href="${loginUrl}pl">Polish</a></li
						></ul>
                     </c:otherwise>
                   </c:choose>
                </div>
				</div>
            </div>
<jsp:directive.include file="includes/bottom.jsp" />